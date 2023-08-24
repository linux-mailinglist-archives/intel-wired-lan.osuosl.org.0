Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FBC786D56
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 13:02:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BA12E613D0;
	Thu, 24 Aug 2023 11:02:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA12E613D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692874959;
	bh=I0cMKWkuVno2LT3d4RUL96J54i2N+/ob4PIIFZQfVS4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=BWsrAz8m1eGGJL5r3NZSGPayfqDr29hdLchF+qousCEmREXVMaZieBHKdyXqho93k
	 KxwaXSLbQVuQ+3vey3zAnbT7W8nkb8A6sIgIeWadm8qhUqQBaLFrsGpLzhlZcvX8nW
	 YEpTFhs3EnGJu4RNYLSHowifNV6HghJE2evzCwdtHFl6xfwuIeM3yW/qA4mWgwllmC
	 jhXlGbp79NIzC3522/l/OOFQWE/sRbsqYFP2+6pg4nwhVmpw5mlEX1qdAqvk52Ea8r
	 PcAXsD481o37w+6ruP45n5CQNrVt+YEiMC4wTgf9vHMB9kLr5eInq2v7lSBWjxBYIG
	 Ya84zwRTTc5OQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iwr5MGzbk_f6; Thu, 24 Aug 2023 11:02:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 569E9613D3;
	Thu, 24 Aug 2023 11:02:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 569E9613D3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F21071BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:02:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D3F5E82B69
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3F5E82B69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nkiNPgGQEWin for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 11:02:31 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6D73A82B5E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 11:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6D73A82B5E
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-68a3f1d8be2so3632506b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 04:02:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692874951; x=1693479751;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=oELav9k2SIZBN+RuqQkpAGBpv33M47omX44ww0HA6QI=;
 b=agqvuORvIRCtCJOFI/xp/LSXU1B6wsNF8KBFJiLqtpZAs5KnLYscpy2uKTlKLRc0Sx
 f2TIOw73o1GPTnYZMuywBl6CXvmmkxiHo3TZ/CFkegBfCyCz4j/Lha2fvDgECHux2Wmb
 H8Kp9e6z4M8HfjZKmGuv3QabNKlXT4Io3yIHZxpP7cCIxoEYFxns2EhuoI+/XWd4Qd2v
 7T8LXGR7OAehsuTrCG4vEfvfi1Zeqw7w5IyeJDlPQBifGCagzvEGbdJKq0M7Y9BR/Zrt
 2FeOgLGHfPfiKv1ulU22XUy6RODp8Iuf8MWR8Rj0z/qNvPVMAAShIjIglUtbHnrd+5Z3
 V1sA==
X-Gm-Message-State: AOJu0YzsV/JPkmRJsWVpJ8ZIQjliSWlGNFGYjtUZvn+JvhsQw1+VFQzX
 e5JyMrX/d7Wx1s4NmGpGHr9DiA==
X-Google-Smtp-Source: AGHT+IF2R1qXxHpm+yMWIrVu0MlXnuC57ojGuF9ppq+MmulUi5V2RsjjDt59eMIHrK5WNaadTG+GOA==
X-Received: by 2002:a05:6a20:938d:b0:129:d944:2e65 with SMTP id
 x13-20020a056a20938d00b00129d9442e65mr20501635pzh.13.1692874950709; 
 Thu, 24 Aug 2023 04:02:30 -0700 (PDT)
Received: from ?IPV6:2400:4050:a840:1e00:78d2:b862:10a7:d486?
 ([2400:4050:a840:1e00:78d2:b862:10a7:d486])
 by smtp.gmail.com with ESMTPSA id
 r5-20020a638f45000000b00528db73ed70sm11223776pgn.3.2023.08.24.04.02.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Aug 2023 04:02:30 -0700 (PDT)
Message-ID: <add68d1c-763d-4f08-96ba-73b8d9604391@daynix.com>
Date: Thu, 24 Aug 2023 20:02:27 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Corinna Vinschen <vinschen@redhat.com>, jesse.brandeburg@intel.com,
 anthony.l.nguyen@intel.com, davem@davemloft.net, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
References: <20230824091603.3188249-1-vinschen@redhat.com>
Content-Language: en-US
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <20230824091603.3188249-1-vinschen@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20221208.gappssmtp.com; s=20221208; t=1692874951; x=1693479751;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=oELav9k2SIZBN+RuqQkpAGBpv33M47omX44ww0HA6QI=;
 b=m2reI3I62fTBYK0BD8KsPr7WKMrE5LYqNr1YDU7thGtnZ3E/gCl5XYEW9huLjHSuT9
 MdbszaVPx6v8UUQ3UYlUGQTUhzTh/2v4bMt2a4nVpl5GuY5p5KgMroUZrJeA4krA9Vm7
 4M6o6v682yVwEVsDkhGMl1gpcuKJ/FQB66xUgFBbyFbb/1eLLGxgYGwlipHVKuzUAiUU
 0CZXucs+Kd0N1a9kRvisYCyaHn1zOiKQ7O65IO61adjvMWgEz99z928eBOKzzU94kpef
 MKe/+nPdPbVZwdmNLPnIVTYZVflxUHtzBT6eGQz5Apb63fkJXe0TlvxJdClWPT0taVOx
 RK9g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20221208.gappssmtp.com
 header.i=@daynix-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=m2reI3I6
Subject: Re: [Intel-wired-lan] [PATCH net] igb: clean up in all error paths
 when enabling SR-IOV
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2023/08/24 18:16, Corinna Vinschen wrote:
> After commit 50f303496d92 ("igb: Enable SR-IOV after reinit"), removing
> the igb module could hang or crash (depending on the machine) when the
> module has been loaded with the max_vfs parameter set to some value != 0.
> 
> In case of one test machine with a dual port 82580, this hang occured:
> 
> [  232.480687] igb 0000:41:00.1: removed PHC on enp65s0f1
> [  233.093257] igb 0000:41:00.1: IOV Disabled
> [  233.329969] pcieport 0000:40:01.0: AER: Multiple Uncorrected (Non-Fatal) err0
> [  233.340302] igb 0000:41:00.0: PCIe Bus Error: severity=Uncorrected (Non-Fata)
> [  233.352248] igb 0000:41:00.0:   device [8086:1516] error status/mask=00100000
> [  233.361088] igb 0000:41:00.0:    [20] UnsupReq               (First)
> [  233.368183] igb 0000:41:00.0: AER:   TLP Header: 40000001 0000040f cdbfc00c c
> [  233.376846] igb 0000:41:00.1: PCIe Bus Error: severity=Uncorrected (Non-Fata)
> [  233.388779] igb 0000:41:00.1:   device [8086:1516] error status/mask=00100000
> [  233.397629] igb 0000:41:00.1:    [20] UnsupReq               (First)
> [  233.404736] igb 0000:41:00.1: AER:   TLP Header: 40000001 0000040f cdbfc00c c
> [  233.538214] pci 0000:41:00.1: AER: can't recover (no error_detected callback)
> [  233.538401] igb 0000:41:00.0: removed PHC on enp65s0f0
> [  233.546197] pcieport 0000:40:01.0: AER: device recovery failed
> [  234.157244] igb 0000:41:00.0: IOV Disabled
> [  371.619705] INFO: task irq/35-aerdrv:257 blocked for more than 122 seconds.
> [  371.627489]       Not tainted 6.4.0-dirty #2
> [  371.632257] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this.
> [  371.641000] task:irq/35-aerdrv   state:D stack:0     pid:257   ppid:2      f0
> [  371.650330] Call Trace:
> [  371.653061]  <TASK>
> [  371.655407]  __schedule+0x20e/0x660
> [  371.659313]  schedule+0x5a/0xd0
> [  371.662824]  schedule_preempt_disabled+0x11/0x20
> [  371.667983]  __mutex_lock.constprop.0+0x372/0x6c0
> [  371.673237]  ? __pfx_aer_root_reset+0x10/0x10
> [  371.678105]  report_error_detected+0x25/0x1c0
> [  371.682974]  ? __pfx_report_normal_detected+0x10/0x10
> [  371.688618]  pci_walk_bus+0x72/0x90
> [  371.692519]  pcie_do_recovery+0xb2/0x330
> [  371.696899]  aer_process_err_devices+0x117/0x170
> [  371.702055]  aer_isr+0x1c0/0x1e0
> [  371.705661]  ? __set_cpus_allowed_ptr+0x54/0xa0
> [  371.710723]  ? __pfx_irq_thread_fn+0x10/0x10
> [  371.715496]  irq_thread_fn+0x20/0x60
> [  371.719491]  irq_thread+0xe6/0x1b0
> [  371.723291]  ? __pfx_irq_thread_dtor+0x10/0x10
> [  371.728255]  ? __pfx_irq_thread+0x10/0x10
> [  371.732731]  kthread+0xe2/0x110
> [  371.736243]  ? __pfx_kthread+0x10/0x10
> [  371.740430]  ret_from_fork+0x2c/0x50
> [  371.744428]  </TASK>
> 
> The reproducer was a simple script:
> 
>    #!/bin/sh
>    for i in `seq 1 5`; do
>      modprobe -rv igb
>      modprobe -v igb max_vfs=1
>      sleep 1
>      modprobe -rv igb
>    done
> 
> It turned out that this could only be reproduce on 82580 (quad and
> dual-port), but not on 82576, i350 and i210.  Further debugging showed
> that igb_enable_sriov()'s call to pci_enable_sriov() is failing, because
> dev->is_physfn is 0 on 82580.
> 
> Prior to commit 50f303496d92 ("igb: Enable SR-IOV after reinit"),
> igb_enable_sriov() jumped into the "err_out" cleanup branch.  After this
> commit it only returned the error code.
> 
> So the cleanup didn't take place, and the incorrect VF setup in the
> igb_adapter structure fooled the igb driver into assuming that VFs have
> been set up where no VF actually existed.
> 
> Fix this problem by cleaning up again if pci_enable_sriov() fails.
> 
> Fixes: 50f303496d92 ("igb: Enable SR-IOV after reinit")
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 9a2561409b06..42ab9ca7f97e 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3827,8 +3827,11 @@ static int igb_enable_sriov(struct pci_dev *pdev, int num_vfs, bool reinit)
>   	}
>   
>   	/* only call pci_enable_sriov() if no VFs are allocated already */
> -	if (!old_vfs)
> +	if (!old_vfs) {
>   		err = pci_enable_sriov(pdev, adapter->vfs_allocated_count);
> +		if (err)
> +			goto err_out;
> +	}
>   
>   	goto out;
>   

Reviewed-by: Akihiko Odaki <akihiko.odaki@daynix.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
