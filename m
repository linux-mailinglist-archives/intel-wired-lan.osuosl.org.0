Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 962424EE05C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 20:26:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B11560E18;
	Thu, 31 Mar 2022 18:26:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxj9NtvoJRrv; Thu, 31 Mar 2022 18:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 308B360B86;
	Thu, 31 Mar 2022 18:26:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74CC71BF395
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 18:26:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6EB52424E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 18:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EqvI49gWc_hg for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 18:26:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07E83424E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 18:26:12 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 005A8B821B1;
 Thu, 31 Mar 2022 18:26:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D18CC340ED;
 Thu, 31 Mar 2022 18:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648751168;
 bh=40MUSP1rREGlVYT6HFmztG+oJkVXenPkZQEKcLSC+KM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=uUXgf+CIwCH4nB3EWt0VbLziwCFo+JAaeACxw/eIdkFXzkQWQAKm4eTQV1hazww1E
 pRUB35gFZRORWsoNfPEKcp66ekMEDZa3Zk6h/iqfooMVJxaHeKZIS7XwLKyr8vrQNF
 DBRxe5KzgQ+292t0HJIq4W4zoaluvTFCOj4DQoBKT9xgNl9U+Gcz/z1wfAr7/+4/xM
 fqAV5fccMFuFjL7Z66P9roFricSEY+mYWZLQD26XLzF86uaLKfo67aVHNhkaGuD5Gq
 AR+2YbnqywmRR7VFGGWGe5KMIJGhrYj0Oj5/jmE8+1vmiP55+A+MDy2zNKpmgpAD6B
 Xh5h624MemTPQ==
Date: Thu, 31 Mar 2022 11:26:07 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kallol Biswas [C]" <kallol.biswas@nutanix.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <20220331112607.0337e1eb@kernel.org>
In-Reply-To: <SJ0PR02MB8862A7F336A45D8E8B0090C4FEE19@SJ0PR02MB8862.namprd02.prod.outlook.com>
References: <SJ0PR02MB8862A7F336A45D8E8B0090C4FEE19@SJ0PR02MB8862.namprd02.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] bug in i40e-2.14.13 driver ??
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sounds like the out of tree version of the driver, adding the
intel-wired list. Feel free to skip CCing netdev in the future
on reports about code that's not in tree.

On Thu, 31 Mar 2022 18:17:14 +0000 Kallol Biswas [C] wrote:
> Hi,
>      We have been getting a NULL pointer dereference in intel i40e driver.
> 
> [  105.551413] BUG: kernel NULL pointer dereference, address: 000000000000000a
> 
> PID: 369    TASK: ffff980d62d70000  CPU: 16  COMMAND: "kworker/16:1"
> #0 [ffffb0354e26fb00] machine_kexec at ffffffffae059db5
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/kernel/machine_kexec_64.c: 441
> #1 [ffffb0354e26fb50] __crash_kexec at ffffffffae12584d
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/kexec_core.c: 957
> #2 [ffffb0354e26fc18] crash_kexec at ffffffffae126ab9
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/include/linux/compiler.h: 292
> #3 [ffffb0354e26fc30] oops_end at ffffffffae02a3da
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/kernel/dumpstack.c: 334
> #4 [ffffb0354e26fc50] no_context at ffffffffae065ff8
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/mm/fault.c: 848
> #5 [ffffb0354e26fcc0] do_page_fault at ffffffffae066ad1
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/mm/fault.c: 1552
> #6 [ffffb0354e26fcf0] page_fault at ffffffffae801119
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/entry/entry_64.S: 1203
>     [exception RIP: i40e_detect_recover_hung+116]
>     RIP: ffffffffc07ae0d4  RSP: ffffb0354e26fda0  RFLAGS: 00010202
>     RAX: ffff980d64e6a000  RBX: ffff980d5b788c00  RCX: ffff980d6f426e08
>     RDX: 0000000000000000  RSI: 0000000000000001  RDI: ffff980d5b788800
>     RBP: 000000000000003c   R8: 0000000065303469   R9: 8080808080808080
>     R10: 0000000000000000  R11: 0000000000000000  R12: ffff980d62d86000
>     R13: 00000000ffffffff  R14: 0000000000000000  R15: ffff980d64e6a848
>     ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>     /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_virtchnl_pf.c: 7253
> #7 [ffffb0354e26fdc8] i40e_service_task at ffffffffc078ff9b [i40e]
>     /home/mockbuild/rpmbuild/BUILD/i40e-2.14.13/src/i40e_ethtool.c: 5000
> #8 [ffffb0354e26fe78] process_one_work at ffffffffae09818b
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/workqueue.c: 2271
> #9 [ffffb0354e26feb8] worker_thread at ffffffffae098ca9
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/include/linux/compiler.h: 266
> #10 [ffffb0354e26ff10] kthread at ffffffffae09e378
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/kernel/kthread.c: 268
> #11 [ffffb0354e26ff50] ret_from_fork at ffffffffae8001ff
>     /usr/src/debug/kernel-5.4.109/linux-5.4.109-2.el7.nutanix.20201105.2244.x86_64/arch/x86/entry/entry_64.S: 352
> 
> -------------------------------------------
> 
> movzwl 0xa(%rdx),%edx fails as RDX: 0000000000000000  (offset 0xa from 0) causes NULL pointer dereference
> 4:27
> mov    0xe8(%rbx),%rdx program rdx, and %rbx is ffff980d5b788c00
> x/x 0xffff980d5b788ce8
> 0xffff980d5b788ce8:     0x00000000, so %rdx gets programmed with 0.
> 
> crash> i40e_vsi.state ffff980d62d86000  
>   state = {0}
> crash> i40e_vsi.netdev ffff980d62d86000  
>   netdev = 0xffff980d62d87000
> crash> num_queue_pairs  
> crash: command not found: num_queue_pairs
> crash> i40e_vsi.num_queue_pairs ffff980d62d86000  
>   num_queue_pairs = 64
> All Tx rings
> crash> x/64g 0xffff980d61f11800  
> 0xffff980d61f11800:     0xffff980d61f11c00      0xffff980d61f12000
> 0xffff980d61f11810:     0xffff980d61f12400      0xffff980d61f12800
> 0xffff980d61f11820:     0xffff980d61f12c00      0xffff980d61f13000
> 0xffff980d61f11830:     0xffff980d61f13400      0xffff980d61f13800
> 0xffff980d61f11840:     0xffff980d61f13c00      0xffff980d61f14000
> 0xffff980d61f11850:     0xffff980d61f14400      0xffff980d61f14800
> 0xffff980d61f11860:     0xffff980d61f14c00      0xffff980d61f15000
> 0xffff980d61f11870:     0xffff980d61f15400      0xffff980d61f15800
> 0xffff980d61f11880:     0xffff980d61f15c00      0xffff980d61f16000
> 0xffff980d61f11890:     0xffff980d61f16400      0xffff980d61f16800
> 0xffff980d61f118a0:     0xffff980d61f16c00      0xffff980d61f17000
> 0xffff980d61f118b0:     0xffff980d61f17400      0xffff980d61f17800
> 0xffff980d61f118c0:     0xffff980d61f17c00      0xffff980d5b790000
> 0xffff980d61f118d0:     0xffff980d5b790400      0xffff980d5b790800
> 0xffff980d61f118e0:     0xffff980d5b790c00      0xffff980d5b791000
> 0xffff980d61f118f0:     0xffff980d5b791400      0xffff980d5b791800
> 0xffff980d61f11900:     0xffff980d5b791c00      0xffff980d5b792000
> 0xffff980d61f11910:     0xffff980d5b792400      0xffff980d5b792800
> 0xffff980d61f11920:     0xffff980d5b792c00      0xffff980d5b793000
> 0xffff980d61f11930:     0xffff980d5b793400      0xffff980d5b793800
> 0xffff980d61f11940:     0xffff980d5b793c00      0xffff980d5b794000
> 0xffff980d61f11950:     0xffff980d5b794400      0xffff980d5b794800
> 0xffff980d61f11960:     0xffff980d5b794c00      0xffff980d5b795000
> 0xffff980d61f11970:     0xffff980d5b795400      0xffff980d5b795800
> 0xffff980d61f11980:     0xffff980d5b795c00      0xffff980d5b796000
> 0xffff980d61f11990:     0xffff980d5b796400      0xffff980d5b796800
> 0xffff980d61f119a0:     0xffff980d5b796c00      0xffff980d5b797000
> 0xffff980d61f119b0:     0xffff980d5b797400      0xffff980d5b797800
> 0xffff980d61f119c0:     0xffff980d5b797c00      0xffff980d5b788000
> 0xffff980d61f119d0:     0xffff980d5b788400      0xffff980d5b788800
> 0xffff980d61f119e0:     0xffff980d5b788c00      0xffff980d5b789000
> 0xffff980d61f119f0:     0xffff980d5b789400      0xffff980d5b789800crash> struct i40e_ring.q_vector 0xffff980d5b788400  q_vector = 0xffff980d61c92800
> crash> struct i40e_ring.q_vector 0xffff980d5b788400    
> q_vector = 0xffff980d61c92800
> 
> crash> struct i40e_ring.q_vector 0xffff980d5b788c00  
>   q_vector = 0x0
> 
> So q_vector is not set after around 60 queues, yet in the driver we do a deference
> i40e_force_wb():
> (q_vector->reg_idx) and die.
> 
> Gdb macro:
> define print_i40e_q_vector
>     set $vsi = (struct i40e_vsi *)$arg0
> 
>     set $q_vectors = $vsi->num_q_vectors
> 
>     printf "vsi %p q_vectors %d", $vsi, $q_vectors
>     set $index = 0
> 
>     while $index < $q_vectors
> 
>         set $q_vector = (struct i40e_q_vector *)$vsi->q_vectors[$index]
> 
>         printf "num_ringpairs %d\n", $q_vector->num_ringpairs
> 
>         set $index += 1
>     end
> 
> 
> end
> 
> Ouput:
> 
> crash> print_i40e_q_vector 0xffff980d62d86000  
> vsi 0xffff980d62d86000 q_vectors 64num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 1
> num_ringpairs 0
> num_ringpairs 0
> num_ringpairs 0
> num_ringpairs 0
> 
> 
> Source code:
> 
> static void i40e_vsi_map_rings_to_vectors(struct i40e_vsi *vsi)
> {
>   int qp_remaining = vsi->num_queue_pairs;
>   int q_vectors = vsi->num_q_vectors;
>   int num_ringpairs;
>   int v_start = 0;
>   int qp_idx = 0;
> 
>   /* If we don't have enough vectors for a 1-to-1 mapping, we'll have to
>    * group them so there are multiple queues per vector.
>    * It is also important to go through all the vectors available to be
>    * sure that if we don't use all the vectors, that the remaining vectors
>    * are cleared. This is especially important when decreasing the
>    * number of queues in use.
>    */
>   for (; v_start < q_vectors; v_start++) {
>     struct i40e_q_vector *q_vector = vsi->q_vectors[v_start];
> 
>     num_ringpairs = DIV_ROUND_UP(qp_remaining, q_vectors - v_start);
> 
>     q_vector->num_ringpairs = num_ringpairs;
>     q_vector->reg_idx = q_vector->v_idx + vsi->base_vector - 1;
> 
>     q_vector->rx.count = 0;
>     q_vector->tx.count = 0;
>     q_vector->rx.ring = NULL;
>     q_vector->tx.ring = NULL;
> 
>     while (num_ringpairs--) {
>       i40e_map_vector_to_qp(vsi, v_start, qp_idx);
>       qp_idx++;
>       qp_remaining--;
>     }
>   }
> }
> 
> How in the above for loop 
>     num_ringpairs = DIV_ROUND_UP(qp_remaining, q_vectors - v_start);
> evaluates to 0, is not clear.
> 
> Have we seen this problem before? If so, is there are fix?
> 
> Nucleodyne@Nutanix
> 408-718-8164
> 
> Nucleodyne@Nutanix
> 408-718-8164
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
