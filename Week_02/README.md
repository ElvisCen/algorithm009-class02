学习笔记
# 堆排序
    堆排序是基于二叉堆的一种排序算法。它类似于选择排序，首先找到最大元素，然后将最大元素放在最后，最后对剩余元素重复相同过程。
### 二叉堆
    二叉堆是具有一下性质的完全二叉树：每个节点的值都大于或者等于其左右子节点的值，称为大顶堆；或者每个节点的值都小于或者等于其左右子节点的值，称为小顶堆。
    如果父节点存储的值在i处，则左子节点可以由 2 * i + 1计算，右子节点可以由 2 * i + 2计算 (假定索引从0开始)
### 堆排序的基本思路
    - 将无序序列构建成一个堆，根据升序降序需求选择大顶堆或者小顶堆；
    - 将堆顶元素与末尾元素交换，将最大元素“沉”到数组末端；
    - 重新调整结构，使其满足堆定义，然后继续交换堆顶元素与当前末尾元素，反复执行+交换步骤，知道整个序列有序。
    
### 代码实现
    ```
    // C++ program for implementation of Heap Sort
    #include <iostream> 

    using namespace std; 
    // To heapify a subtree rooted with node i which is 
    // an index in arr[]. n is size of heap 
    void heapify(int arr[], int n, int i) 
    { 
        int largest = i; // Initialize largest as root 
        int l = 2*i + 1; // left = 2*i + 1 
        int r = 2*i + 2; // right = 2*i + 2 
      
        // If left child is larger than root 
        if (l < n && arr[l] > arr[largest]) 
            largest = l; 
      
        // If right child is larger than largest so far 
        if (r < n && arr[r] > arr[largest]) 
            largest = r; 
      
        // If largest is not root 
        if (largest != i) 
        { 
            swap(arr[i], arr[largest]); 
      
            // Recursively heapify the affected sub-tree 
            heapify(arr, n, largest); 
        } 
    } 
    /* A utility function to print array of size n */
    void printArray(int arr[], int n) 
    { 
        for (int i=0; i<n; ++i) 
            cout << arr[i] << " "; 
        cout << "\n"; 
    } 
      
    // Driver program 
    int main() 
    { 
        int arr[] = {12, 11, 13, 5, 6, 7}; 
        int n = sizeof(arr)/sizeof(arr[0]); 
      
        heapSort(arr, n); 
      
        cout << "Sorted array is \n"; 
        printArray(arr, n); 
    } 
    
    **输出：**
    ```
    排序数组为
    5 6 7 11 12 13
    **时间复杂度：** 
    堆排序的整体时间复杂度为O（nLogn）。
    

