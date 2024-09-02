Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD443968260
	for <lists+intel-wired-lan@lfdr.de>; Mon,  2 Sep 2024 10:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 97AE480F2A;
	Mon,  2 Sep 2024 08:49:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZP4E1hlbLYMP; Mon,  2 Sep 2024 08:49:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CCB8B80F2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1725266967;
	bh=BybvaNHBSo+pp+BAsQlS4icRilb7WXRwVGJwUN96Q6A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NtnUvMCpYROt9/+jeMEHZNXorASMD1zHbbatXjx+3HV/yJpQh8Tlt2YeNlO1dHmOw
	 LQiqWBNuyCs72Y6ii9plL55ibppTEhGvf2JKDw4XmMrMzNzvSGuQGj0kcQDHHltk0E
	 2dDPze61pT/9mZYCSjQHbQVg9+Clza/vJZ7bQGPwCmQkm4rlhyEfTlURRab5kVgjGJ
	 fVLCw4K4lzz0QL09kkiyTBwsEdHMc75sfhv1HGparI7K+WQv+j4W1LMnHvMZkIQSjU
	 tL80a1/KpJGs9HF8HUWu+EuGxCk7xml5dHIDaI14OSKtiZTGyjRF7z8eF3XM4WHvLq
	 /Lo2jEq8Sy7cw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CCB8B80F2F;
	Mon,  2 Sep 2024 08:49:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EB331BF427
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 08:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8B3EE6061B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 08:49:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yKPXfL2hct_V for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Sep 2024 08:49:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4D9586061A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D9586061A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4D9586061A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Sep 2024 08:49:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C578D5C2714;
 Mon,  2 Sep 2024 08:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9EF3C4CEC2;
 Mon,  2 Sep 2024 08:49:20 +0000 (UTC)
Date: Mon, 2 Sep 2024 09:49:18 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240902084918.GD23170@kernel.org>
References: <20240828223825.426647-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240828223825.426647-1-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1725266961;
 bh=d1/KMQQr3fp9PZdagK+xwKJylQI0EntVlebQ3EFFMCY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZRmLM7FQNHhxRN0c4VcxoPrXOhha8/AKkVACxwSdZdQxfFGqjkZbgAHkm4f4yUlGs
 y9sDvV5pu6vfINvCXbRaBln5HuUm1lvCC+woGiH3z0wfEtV4ujVK0iH0dcTQR6WhwN
 pDmu8OwD8F1G07/JRt+rnlIfNhDV06LKuQt7ZqUDS24+NP72toSl53PSiLJye/hig3
 z/okx3/INUWxVgtt84cbPtZit+ciYF2zsCD27u8S40hMt3+cV5Cd3Ive4ibAAe46YF
 5ytLFSZcXi87E52yAnlgM5y+MWEHAodMEzyUiQ+WJ2218AUfY1PUEA4j3Ws1Nekii+
 TVGVBuaXHspPw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ZRmLM7FQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: fix VF dynamic
 interrupt ctl register initialization
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
Cc: netdev@vger.kernel.org, pavan.kumar.linga@intel.com,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Aug 28, 2024 at 04:38:25PM -0600, Ahmed Zaki wrote:
> The VF's dynamic interrupt ctl "dyn_ctl_intrvl_s" is not initialized
> in idpf_vf_intr_reg_init(). This resulted in the following UBSAN error
> whenever a VF is created:
> 
> [  564.345655] UBSAN: shift-out-of-bounds in drivers/net/ethernet/intel/idpf/idpf_txrx.c:3654:10
> [  564.345663] shift exponent 4294967295 is too large for 32-bit type 'int'
> [  564.345671] CPU: 33 UID: 0 PID: 2458 Comm: NetworkManager Not tainted 6.11.0-rc4+ #1
> [  564.345678] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C6200.86B.0027.P10.2201070222 01/07/2022
> [  564.345683] Call Trace:
> [  564.345688]  <TASK>
> [  564.345693]  dump_stack_lvl+0x91/0xb0
> [  564.345708]  __ubsan_handle_shift_out_of_bounds+0x16b/0x320
> [  564.345730]  idpf_vport_intr_update_itr_ena_irq.cold+0x13/0x39 [idpf]
> [  564.345755]  ? __pfx_idpf_vport_intr_update_itr_ena_irq+0x10/0x10 [idpf]
> [  564.345771]  ? static_obj+0x95/0xd0
> [  564.345782]  ? lockdep_init_map_type+0x1a5/0x800
> [  564.345794]  idpf_vport_intr_ena+0x5ef/0x9f0 [idpf]
> [  564.345814]  idpf_vport_open+0x2cc/0x1240 [idpf]
> [  564.345837]  idpf_open+0x6d/0xc0 [idpf]
> [  564.345850]  __dev_open+0x241/0x420
> 
> Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Thanks,

I see that this now matches the implementation of idpf_intr_reg_init().

Reviewed-by: Simon Horman <horms@kernel.org>
