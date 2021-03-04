Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B4E32CA95
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Mar 2021 03:56:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4F4F642FB2;
	Thu,  4 Mar 2021 02:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ipVYfKhZlSB; Thu,  4 Mar 2021 02:56:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1050B42FBC;
	Thu,  4 Mar 2021 02:56:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E83A1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1D19884263
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5dmGcMEH4Pae for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Mar 2021 02:56:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99B5384246
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Mar 2021 02:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1614826569;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=PpOyCMMx91MkZYb149ugTpLOO1Coel78R/rVCHGjcMQ=;
 b=KvFkeCC7+PRv+enHGothPqr4WexXeyAn74JjcnNZrXwf3C9nWeTUeCC1G8AiHtoLna1dmU
 yuXxeqTsJDPD2o3zXkpeU0vc05pdhvZTZo8cpP7PgMA1NTi/M6fxuFzWcGfxdw9EQJfHxJ
 IoCPJKiDlbaUF1NBlkVfWC1KYzNRKeo=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-V1oy2fDIOPSh_AKSNjBI9Q-1; Wed, 03 Mar 2021 21:56:07 -0500
X-MC-Unique: V1oy2fDIOPSh_AKSNjBI9Q-1
Received: by mail-pg1-f197.google.com with SMTP id h5so1208513pgi.12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Mar 2021 18:56:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PpOyCMMx91MkZYb149ugTpLOO1Coel78R/rVCHGjcMQ=;
 b=H2ljeMfVXyWwHldTYKytlTtYRcWvsvNwls8SLFK5fvDgvQZiLRoYUNtwDr9UkcJfod
 uTyIs/XZ/t/0siavCEqNiYvWZtJC9n1WxBfjjqkhKrk0gGb4IBBB0dXIj0Sq331yx5MG
 jU7ZnFTelCSFVN4qJSuGNW0AXHdFEL1W8BYAP+NwBPauxQKS6Sx9t8dnfWYB7CgctLAc
 1RqOPwQ7WsDPd+qFe+0SCCJdo/LPDk53/Y3f5P5ysbS53tZrq95JpLTG/ieaosMYLKSl
 8mhZPsg6zyKwkug7VphkfbzeNpyFqxj7GhJ5KCwUTMtJnOdg89uAaHRUE+y2tAXIc0L/
 Srew==
X-Gm-Message-State: AOAM532AQgdMPmpccFM0lUZAR02cGH01W5/G0NSD+fjxD/SZnHFNMMcM
 8jHoo909nqW2UbSdOfp3/P1Pjvo0mCds1mHSGPt9kiI409THM08RkmFHGTU38OU+3KUFh202VhW
 A15pWG2vQUvi7x4466AffTbjRCjJWNA==
X-Received: by 2002:a17:902:7401:b029:e4:5992:e64a with SMTP id
 g1-20020a1709027401b02900e45992e64amr1924012pll.75.1614826566029; 
 Wed, 03 Mar 2021 18:56:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxIahrgeq1c34mlcgTg4K6/8t99XJSO59IqPTAVHi4onc9O3Fw+pdrS85WC092WgUgnx8p1GQ==
X-Received: by 2002:a17:902:7401:b029:e4:5992:e64a with SMTP id
 g1-20020a1709027401b02900e45992e64amr1923998pll.75.1614826565762; 
 Wed, 03 Mar 2021 18:56:05 -0800 (PST)
Received: from localhost ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id x129sm18862348pfc.96.2021.03.03.18.56.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 18:56:05 -0800 (PST)
From: Coiby Xu <coxu@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  4 Mar 2021 10:55:40 +0800
Message-Id: <20210304025543.334912-1-coxu@redhat.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=coxu@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH v1 0/3] Reducing memory usage of i40e for
 kdump
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Cc: Song Liu <songliubraving@fb.com>, Daniel Borkmann <daniel@iogearbox.net>,
 kexec@lists.infradead.org, Andrii Nakryiko <andrii@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "open list:BPF Safe dynamic programs and tools" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, i40e consumes lots of memory and causes the failure of kdump.

After reducing the allocation of tx/rx/arg/asq ring buffers to the
minimum, the memory consumption is significantly reduced,
    - x86_64: 85.1MB to 1.2MB 
    - POWER9: 15368.5MB to 20.8MB

After applying this patch set, we can still achieve 100MB+/s network
speed which I think is limited by the net link (1000Mb/s) and this is 
sufficient for kdump.

Note that if the i40e NIC supports iWarp, i40iw maybe automatically be 
loaded to allocate RDMA resource which consumes even much more memory. 
For the aforementioned x86_64 machine, i40iw alone consumes 1513.7MB. 
With the module parameter "resource_profile=2", the memory consumption 
could be reduced to ~300M which is still too much for kdump 
(crasherknel=auto).
A user needs to reserve sufficient memory for kdump kernel if he/she 
wants to enable RDMA for kdump. And the user may also need to instruct
the initramfs tool to build the i40iw driver into the initramfs since
the initramfs tool may not include the i40iw driver by default.

Change in v1:
 - drop the patch that prevents i40iw client from starting for
   kdump [Jakub Kicinski]

memstrack report for the x86_64 machine
=======================================

After applying this patch set,

    ======== Report format module_summary: ========
    Module i40e using 20.8MB (332 pages), peak allocation 20.9MB (335 pages)
    Module i2c_core using 19.4MB (310 pages), peak allocation 22.8MB (365 pages)
    ======== Report format module_summary END ========
    
    ======== Report format module_top: ========
    Top stack usage of module i40e:
      (null) Pages: 332 (peak: 335)
        system_call_common (0xc00000000000d260) Pages: 267 (peak: 268)
          system_call_exception (0xc000000000034334) Pages: 267 (peak: 268)
            __sys_sendmsg (0xc000000000fd727c) Pages: 267 (peak: 268)
              ___sys_sendmsg (0xc000000000fd22ec) Pages: 267 (peak: 268)
                sock_sendmsg (0xc000000000fd0a90) Pages: 267 (peak: 268)
                  netlink_sendmsg (0xc0000000010dbd4c) Pages: 267 (peak: 268)
                    netlink_unicast (0xc0000000010db948) Pages: 267 (peak: 268)
                      rtnetlink_rcv (0xc000000001033058) Pages: 267 (peak: 268)
                        netlink_rcv_skb (0xc0000000010dc534) Pages: 267 (peak: 268)
                          rtnetlink_rcv_msg (0xc0000000010340fc) Pages: 267 (peak: 268)
                            rtnl_newlink (0xc000000001038290) Pages: 267 (peak: 268)
                              __rtnl_newlink (0xc000000001037d64) Pages: 267 (peak: 268)
                                do_setlink (0xc00000000103626c) Pages: 267 (peak: 268)
                                  dev_change_flags (0xc00000000101e2fc) Pages: 267 (peak: 268)
                                    __dev_change_flags (0xc00000000101e1fc) Pages: 267 (peak: 268)
                                      __dev_open (0xc00000000101dda8) Pages: 267 (peak: 268)
                                        i40e_open i40e (0xc00800000851a238) Pages: 267 (peak: 268)
                                          i40e_vsi_open i40e (0xc008000008519f54) Pages: 252 (peak: 252)
                                            i40e_vsi_configure i40e (0xc0080000085093ac) Pages: 252 (peak: 252)
                                              i40e_configure_rx_ring i40e (0xc0080000085055b0) Pages: 252 (peak: 252)
                                                i40e_alloc_rx_buffers i40e (0xc008000008540d1c) Pages: 252 (peak: 252)
                                                  __alloc_pages_nodemask (0xc0000000004d74e0) Pages: 252 (peak: 252)
                                                    (null) Pages: 252 (peak: 252)
                                                      __traceiter_mm_page_alloc (0xc00000000047c754) Pages: 504 (peak: 504)
    

Before applying this patch set,

    ======== Report format module_summary: ========
    Module i40iw using 1513.7MB (387507 pages), peak allocation 1513.7MB (387507 pages)
    Module i40e using 85.8MB (21977 pages), peak allocation 87.0MB (22276 pages)
    Module xfs using 1.2MB (299 pages), peak allocation 1.2MB (300 pages)
    Module rdma_ucm using 0.8MB (210 pages), peak allocation 0.8MB (211 pages)
    Module ib_uverbs using 0.5MB (131 pages), peak allocation 3.8MB (971 pages)
    Module ib_iser using 0.4MB (109 pages), peak allocation 0.4MB (109 pages)
    Module target_core_mod using 0.4MB (109 pages), peak allocation 0.4MB (111 pages)
    Module rdma_cm using 0.2MB (46 pages), peak allocation 0.2MB (46 pages)
    Module e1000e using 0.2MB (46 pages), peak allocation 0.2MB (46 pages)
    Module ib_core using 0.2MB (45 pages), peak allocation 0.2MB (45 pages)
    Module iw_cm using 0.2MB (44 pages), peak allocation 0.2MB (44 pages)
    Module scsi_transport_iscsi using 0.1MB (20 pages), peak allocation 0.1MB (20 pages)
    Module ib_isert using 0.1MB (19 pages), peak allocation 0.1MB (19 pages)
    Module iscsi_target_mod using 0.1MB (17 pages), peak allocation 0.1MB (17 pages)
    Module libiscsi using 0.1MB (15 pages), peak allocation 0.1MB (15 pages)
    Module ib_cm using 0.1MB (14 pages), peak allocation 0.1MB (14 pages)
    Module ib_srpt using 0.0MB (9 pages), peak allocation 0.0MB (9 pages)
    Module rpcrdma using 0.0MB (0 pages), peak allocation 0.0MB (0 pages)
    ======== Report format module_summary END ========
    
    ======== Report format module_top: ========
    Top stack usage of module i40iw:
      (null) Pages: 387507 (peak: 387507)
        ret_from_fork (0xffffffffb5000255) Pages: 387507 (peak: 387507)
          kthread (0xffffffffb4700696) Pages: 387507 (peak: 387507)
            worker_thread (0xffffffffb46facf0) Pages: 387507 (peak: 387507)
              process_one_work (0xffffffffb46fa627) Pages: 387507 (peak: 387507)
                i40e_service_task i40e (0xffffffffc1146183) Pages: 387507 (peak: 387507)
                  i40e_client_subtask i40e (0xffffffffc1163a34) Pages: 387507 (peak: 387507)
                    i40iw_open.part.14 i40iw (0xffffffffc11b0ea9) Pages: 344064 (peak: 344064)
                      i40iw_sc_create_hmc_obj i40iw (0xffffffffc11ae4c9) Pages: 344064 (peak: 344064)
                        i40iw_add_sd_table_entry i40iw (0xffffffffc11ae079) Pages: 344064 (peak: 344064)
                          i40iw_allocate_dma_mem i40iw (0xffffffffc11b7517) Pages: 344064 (peak: 344064)
                            dma_direct_alloc_pages (0xffffffffb4762035) Pages: 344064 (peak: 344064)
                              __dma_direct_alloc_pages (0xffffffffb4761f04) Pages: 344064 (peak: 344064)
                                __alloc_pages_nodemask (0xffffffffb48b7367) Pages: 344064 (peak: 344064)
                                  __alloc_pages_nodemask (0xffffffffb48b7367) Pages: 688128 (peak: 688128)
                    i40iw_open.part.14 i40iw (0xffffffffc11b1278) Pages: 25883 (peak: 25883)
                      i40iw_puda_create_rsrc i40iw (0xffffffffc11b47da) Pages: 24576 (peak: 24576)
                        i40iw_allocate_dma_mem i40iw (0xffffffffc11b7517) Pages: 24576 (peak: 24576)
                          dma_direct_alloc_pages (0xffffffffb4762035) Pages: 24576 (peak: 24576)
                            __dma_direct_alloc_pages (0xffffffffb4761f04) Pages: 24576 (peak: 24576)
                              __alloc_pages_nodemask (0xffffffffb48b7367) Pages: 24576 (peak: 24576)
                                __alloc_pages_nodemask (0xffffffffb48b7367) Pages: 49152 (peak: 49152)
                      i40iw_puda_create_rsrc i40iw (0xffffffffc11b485a) Pages: 731 (peak: 731)
                        i40iw_allocate_virt_mem i40iw (0xffffffffc11b758d) Pages: 731 (peak: 731)
    



memstrack report for the POWER9 machine
=======================================

After applying this patch set,

    ======== Report format module_summary: ========
    Module i40e using 1.2MB (316 pages), peak allocation 1.4MB (369 pages)
    ======== Report format module_summary END ========
    
    ======== Report format module_top: ========
    Top stack usage of module i40e:
      (null) Pages: 316 (peak: 369)
        i40e_init_interrupt_scheme i40e (0xffffffffc03f85f8) Pages: 79 (peak: 79)
          __pci_enable_msix_range.part.0 (0xffffffff966b9878) Pages: 69 (peak: 69)
            __msi_domain_alloc_irqs (0xffffffff9614c31b) Pages: 69 (peak: 69)
              __irq_domain_alloc_irqs (0xffffffff96149fb5) Pages: 35 (peak: 35)
                irq_domain_alloc_descs.part.0 (0xffffffff961489e5) Pages: 35 (peak: 35)
                  __irq_alloc_descs (0xffffffff96bc0583) Pages: 22 (peak: 22)
                    kobject_add (0xffffffff9666292e) Pages: 22 (peak: 22)
                      kobject_add_internal (0xffffffff966622e2) Pages: 22 (peak: 22)
                        internal_create_groups.part.0 (0xffffffff963d962d) Pages: 22 (peak: 22)
                          internal_create_group (0xffffffff963d8f56) Pages: 22 (peak: 22)
                            sysfs_add_file_mode_ns (0xffffffff963d837e) Pages: 22 (peak: 22)
                              __kernfs_create_file (0xffffffff963d7865) Pages: 22 (peak: 22)
                                kernfs_new_node (0xffffffff963d5ad3) Pages: 22 (peak: 22)
                                  __kernfs_new_node (0xffffffff963d4e4e) Pages: 18 (peak: 18)
                                    kmem_cache_alloc (0xffffffff962e8b04) Pages: 18 (peak: 18)
                                      __slab_alloc (0xffffffff962e891c) Pages: 18 (peak: 18)
                                        ___slab_alloc (0xffffffff962e875c) Pages: 18 (peak: 18)
                                          allocate_slab (0xffffffff962e6223) Pages: 18 (peak: 18)
                                            __alloc_pages_nodemask (0xffffffff962c07f5) Pages: 18 (peak: 18)
                                              __alloc_pages_nodemask (0xffffffff962c07f5) Pages: 36 (peak: 36)
    ======== Report format module_top END ========


Before applying this patch set,


    ======== Report format module_summary: ========
    Module i40e using 15368.5MB (245896 pages), peak allocation 15368.6MB (245897 pages)
    Module bpf using 5.8MB (92 pages), peak allocation 7.4MB (118 pages)
    Module xfs using 0.8MB (12 pages), peak allocation 0.8MB (12 pages)
    ======== Report format module_summary END ========
    
    ======== Report format module_top: ========
    Top stack usage of module i40e:
      (null) Pages: 245896 (peak: 245897)
        system_call_common (0xc00000000000d260) Pages: 243801 (peak: 243801)
          system_call_exception (0xc000000000034254) Pages: 243801 (peak: 243801)
            __sys_sendmsg (0xc000000000fd221c) Pages: 243801 (peak: 243801)
              ___sys_sendmsg (0xc000000000fcd28c) Pages: 243801 (peak: 243801)
                sock_sendmsg (0xc000000000fcba30) Pages: 243801 (peak: 243801)
                  netlink_sendmsg (0xc0000000010d69ac) Pages: 243801 (peak: 243801)
                    netlink_unicast (0xc0000000010d65a8) Pages: 243801 (peak: 243801)
                      rtnetlink_rcv (0xc00000000102de78) Pages: 243801 (peak: 243801)
                        netlink_rcv_skb (0xc0000000010d7194) Pages: 243801 (peak: 243801)
                          rtnetlink_rcv_msg (0xc00000000102ef1c) Pages: 243801 (peak: 243801)
                            rtnl_newlink (0xc0000000010330b0) Pages: 243801 (peak: 243801)
                              __rtnl_newlink (0xc000000001032b84) Pages: 243801 (peak: 243801)
                                do_setlink (0xc00000000103108c) Pages: 243801 (peak: 243801)
                                  dev_change_flags (0xc00000000101917c) Pages: 243801 (peak: 243801)
                                    __dev_change_flags (0xc00000000101907c) Pages: 243801 (peak: 243801)
                                      __dev_open (0xc000000001018c28) Pages: 243801 (peak: 243801)
                                        i40e_open i40e (0xc0080000083be3c8) Pages: 243801 (peak: 243801)
                                          i40e_vsi_open i40e (0xc0080000083be074) Pages: 242655 (peak: 242655)
                                            i40e_vsi_configure i40e (0xc0080000083a8efc) Pages: 242647 (peak: 242647)
                                              i40e_configure_rx_ring i40e (0xc0080000083a6a60) Pages: 242583 (peak: 242583)
                                                i40e_alloc_rx_buffers i40e (0xc0080000083e9280) Pages: 242583 (peak: 242583)
                                                  __alloc_pages_nodemask (0xc0000000004d66c0) Pages: 242583 (peak: 242583)
                                                    (null) Pages: 242583 (peak: 242583)
                                                      __traceiter_mm_page_alloc (0xc00000000047bab4) Pages: 485166 (peak: 485166)
                                              i40e_configure_rx_ring i40e (0xc0080000083a6850) Pages: 64 (peak: 64)
                                                i40e_alloc_rx_bi i40e (0xc0080000083e8cec) Pages: 64 (peak: 64)
                                                  __kmalloc (0xc00000000051cc54) Pages: 64 (peak: 64)
                                                    ___slab_alloc (0xc00000000051c4a0) Pages: 64 (peak: 64)
                                                      allocate_slab (0xc000000000517f94) Pages: 64 (peak: 64)
                                                        alloc_pages_current (0xc0000000005054f0) Pages: 64 (peak: 64)
                                                          __alloc_pages_nodemask (0xc0000000004d66c0) Pages: 64 (peak: 64)
                                                            (null) Pages: 64 (peak: 64)
                                                              __traceiter_mm_page_alloc (0xc00000000047bab4) Pages: 128 (peak: 128)
                                            i40e_vsi_configure i40e (0xc0080000083a8e4c) Pages: 8 (peak: 8)
                                              i40e_configure_tx_ring i40e (0xc0080000083a8b10) Pages: 8 (peak: 8)
                                                netif_set_xps_queue (0xc00000000100d5b4) Pages: 8 (peak: 8)
                                                  __netif_set_xps_queue (0xc00000000100c77c) Pages: 6 (peak: 6)
                                                    __kmalloc (0xc00000000051cc54) Pages: 6 (peak: 6)
                                                      ___slab_alloc (0xc00000000051c4a0) Pages: 6 (peak: 6)
                                                        allocate_slab (0xc000000000517f94) Pages: 6 (peak: 6)
                                                          alloc_pages_current (0xc0000000005054f0) Pages: 6 (peak: 6)
                                                            __alloc_pages_nodemask (0xc0000000004d66c0) Pages: 6 (peak: 6)
                                                              (null) Pages: 6 (peak: 6)
                                                                __traceiter_mm_page_alloc (0xc00000000047bab4) Pages: 12 (peak: 12)
    ...
    ======== Report format module_top END ========

Coiby Xu (3):
  i40e: use minimal tx and rx pairs for kdump
  i40e: use minimal rx and tx ring buffers for kdump
  i40e: use minimal admin queue for kdump

 drivers/net/ethernet/intel/i40e/i40e.h      |  2 ++
 drivers/net/ethernet/intel/i40e/i40e_main.c | 23 +++++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
