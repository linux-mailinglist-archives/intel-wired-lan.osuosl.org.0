Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cIGZKUjuuWnPPgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 01:14:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 296E12B4959
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 01:14:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF08681495;
	Wed, 18 Mar 2026 00:13:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id npJzIseFUeyC; Wed, 18 Mar 2026 00:13:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10D398150C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773792838;
	bh=NH3lKMbPGzMjHktQ2S0JYx2HKd1BHzthwHWo0yjIxC8=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=l7pH7F5MI0EeJFTZ8Q/0uCjqFkvHrRbM5bEGUbpfylkviiPch7KR8DP0eSqxwJsNO
	 AV/GWpXFRyvOwwzqwywy/f/iuHt775by+4CqG30YCS0XwqYLNtdwSVTSbLclLBvcgo
	 varG3vDiYwdFvuf/1N4AyV2a475eYmA+I94++nJ7DnWH4631aV1sSJ/FnYfuiflVEY
	 qFwv1uvjjcfWMXuuyl27ZGprncrSuK4dOrr/ESsB14QqGKVkNiufBCRozkT6E3/PvM
	 GBhWCk30q8UxTt9Vo6/dmoPIG7+s6exZmjd2zxLfP7zpUAmjV43P6YdII2+el/mCzs
	 /KQ+V4uIKhPXw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 10D398150C;
	Wed, 18 Mar 2026 00:13:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id AAB70D3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E611409F0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:13:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lnVpL3VIPJEa for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 00:13:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::b136; helo=mail-yx1-xb136.google.com;
 envelope-from=boolli@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C972D409EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C972D409EC
Received: from mail-yx1-xb136.google.com (mail-yx1-xb136.google.com
 [IPv6:2607:f8b0:4864:20::b136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C972D409EC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 00:13:55 +0000 (UTC)
Received: by mail-yx1-xb136.google.com with SMTP id
 956f58d0204a3-64c97997b0fso4837295d50.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Mar 2026 17:13:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773792834; cv=none;
 d=google.com; s=arc-20240605;
 b=f6e2h4succc53quEARF3x7RA4hztoTsNZIVxfW7l+MW5ktPFqiBQBv7tJex1M3RrQj
 LH9v9Vaaii+0pwGO3A0gnJwEVldjXKHv/jXoFeXFBXRf6BsZx1YG6vTTXBu54g63X3sl
 713JhvHCcEAubdJW1zEskF0tEQ9KhlQNDDb+twrOBZ9zArm+ANXMlCWnz5QEsLk8VhLJ
 UhJCv3y5lPDuT89v5uGNQ0Op2bJdWgdvdWF/kfCtfQtZ/8KZIvum0PvNRf6LC2c6Dod/
 2otq2UDTkjh2SREhBPj044zaHqmMH9lWSaK8XqzIeBNdW3DQt8U+mBrjUQccN42pggm1
 5y9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=NH3lKMbPGzMjHktQ2S0JYx2HKd1BHzthwHWo0yjIxC8=;
 fh=FlEgfaKPftyqF+v3LZ29weqZV0PuS9EMvsXLuWxZXUE=;
 b=kxpYuV72ZQkQ8X6MsxgykjvRw8oKRRnUf8NkXhaVjqq538G9pZSy+TPLpiAfIr1N6A
 Ejt4UIR3SGO56Us7J7EVCAN1t1lD7/vc1vThdx6GmURMZptaj/yaerIiRH0SrkebfS6F
 4bQqbvSC97say5V45r/12IoMqiOfPzTbIOD8FY8y8rAmDRIEumrcHpyEIcB8wCE7FLlE
 /emHUqqgQPybetnK94MwIYp/2AzFXUGb+kXnRc8bVmLmVaqjd6CVAy+eSpDLRJFOcfRO
 OC0V5rEnjNgKzEpFqX9ZnQYLnNbDjYj1g/QgbszgCx8/3hTKYTgw5wbxFY/AURVyebI4
 uxjA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773792834; x=1774397634;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=NH3lKMbPGzMjHktQ2S0JYx2HKd1BHzthwHWo0yjIxC8=;
 b=tOPGIqc/2dhxLPrrbf+hXjdOctjkdpnuMGNDnQj1E9o/CSXWqNZVH28viTVD1rtx8H
 ygpuRWbQdUCDUpp8Xh8H5pDIlUHYSxUBRqHP8dwfzgZ2tce2YYMDG6K0bLwJW0B8dljA
 d+cfIYaR8ayug0yCpVvkM3+nVZa1LDLgYDwtUzaBuGVrMaVeExNVOHzpSFF6s9EkJFux
 uXgr1ppZjWEOroyph1amsOEyE4vNqaoJ4EaZNsjoUSvOSSTCmws85RYjcaX0VuZ1kTBI
 PmZsNTLDCzFCna06e0ykFsPlqBYaZay9rhq6owycHgugaa1/XbZa/UfiuIbeb4Zohknq
 CBAQ==
X-Gm-Message-State: AOJu0YxJ6txk6yAMD3grAatBccJji9HsVPKR63lJWoso0VM2vMEg1HLg
 WwcGGay0jqvwYW2axdmMcj7B0gqfb8PRa9l5vpaZpr62z0uNw+zZLVL2vcCSOsYetANjNi0dsih
 D62CqORGNJya/ASzzm4zmbHq/wFOkfbcoa2VxTOZD
X-Gm-Gg: ATEYQzzyXfquHOgYElY9Rv+l5VIpikPb4b0UqcHKftKsu8E8BtMQzi4rbIh4DQ6valn
 3JZM9ZVhPK35QJbvqK2OjwO1lcIJ1lOqtkHwwO9aiyuFm5SoNi6cXf3FQNsSQYc5bt/dL8XsGhF
 uLXmFtWx9dojbQ52/78nfAmeCrOWoiu6tqFGNa0LaWoukBWCKvcn7msS7WoGuJeNIY26zz7d9qm
 PU9cqW73FEZgx/57IvNxAX0dKTysRfAqp6+yE9AqEo3XBnJg8DYjqIdjBgPj/7rAJHsJHAfyVIn
 NATgzmnVl40OHLirTJGFcLA4INXZzATSBVM=
X-Received: by 2002:a53:acdb:0:20b0:64c:9ee9:7784 with SMTP id
 956f58d0204a3-64e912ea4edmr1596743d50.11.1773792834005; Tue, 17 Mar 2026
 17:13:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260316232819.6872-4-emil.s.tantilov@intel.com>
In-Reply-To: <20260316232819.6872-4-emil.s.tantilov@intel.com>
Date: Tue, 17 Mar 2026 17:13:41 -0700
X-Gm-Features: AaiRm52502HuPWZDlNe1pVsboDjRd5-YbjXG_qFrypIUllH3EkzzS3xrhNFe7OA
Message-ID: <CAODvEq6ZDoAxzZ4scKtE7tnfe94wBwgTsckEfLzwxFo=BcLNSA@mail.gmail.com>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 anthony.l.nguyen@intel.com, aleksandr.loktionov@intel.com, 
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, davem@davemloft.net, 
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
 bigeasy@linutronix.de, clrkwllms@kernel.org, rostedt@goodmis.org, 
 linux-rt-devel@lists.linux.dev, sgzhang@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20251104; t=1773792834; x=1774397634; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NH3lKMbPGzMjHktQ2S0JYx2HKd1BHzthwHWo0yjIxC8=;
 b=OaivqW5GKGFCPh6D8K7hfoI9RRVkU7ykhfupu8vzeNnPQWo7HB28AyioUw5wdiUPZV
 PfsyRzrmGc9D6Sv4U8gKDQeVfEtY9kNGyneWcTaa1AUOUiXbajfVYNnc2D/idCCWHYBL
 jQ/iLhAhtxoy5ip9gyTh+dk721NLXXgAttnXyB/6QrHGJDnHkKkMvO6ccGfj/3vyb0Nr
 /rPBZshDIhm2+nEOHrf2rwmYGwQmXIrKLR89PPxC0cu5+xUWZ6jgQ1anbWV2lDgeseYW
 T0V/pAbLJT1DJsfr5DHBUXzRjCqAOi4MqCJl9PO6gwq94KQ4BAqGOC/jzFmEi0SBaI1a
 BoXQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20251104 header.b=OaivqW5G
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] idpf: fix PREEMPT_RT
 raw/bh spinlock nesting for async VC handling
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
From: Li Li via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Li Li <boolli@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:emil.s.tantilov@intel.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[boolli@google.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 296E12B4959
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you!

Reviewed-by: Li Li <boolli@google.com>

On Mon, Mar 16, 2026 at 4:28=E2=80=AFPM Emil Tantilov <emil.s.tantilov@inte=
l.com> wrote:
>
> Restructure the ASYNC case to allow calling idpf_vc_xn_forward_reply()
> outside of idpf_vc_xn_lock(). This avoids invalid wait context reported b=
y
> the kernel due to the async handler taking BH spinlock:
>
> [  805.726977] =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> [  805.726991] [ BUG: Invalid wait context ]
> [  805.727006] 7.0.0-rc2-net-devq-031026+ #28 Tainted: G S         OE
> [  805.727026] -----------------------------
> [  805.727038] kworker/u261:0/572 is trying to lock:
> [  805.727051] ff190da6a8dbb6a0 (&vport_config->mac_filter_list_lock){+..=
.}-{3:3}, at: idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
> [  805.727099] other info that might help us debug this:
> [  805.727111] context-{5:5}
> [  805.727119] 3 locks held by kworker/u261:0/572:
> [  805.727132]  #0: ff190da6db3e6148 ((wq_completion)idpf-0000:83:00.0-mb=
x){+.+.}-{0:0}, at: process_one_work+0x4b5/0x730
> [  805.727163]  #1: ff3c6f0a6131fe50 ((work_completion)(&(&adapter->mbx_t=
ask)->work)){+.+.}-{0:0}, at: process_one_work+0x1e5/0x730
> [  805.727191]  #2: ff190da765190020 (&x->wait#34){+.+.}-{2:2}, at: idpf_=
recv_mb_msg+0xc8/0x710 [idpf]
> [  805.727218] stack backtrace:
> ...
> [  805.727238] Workqueue: idpf-0000:83:00.0-mbx idpf_mbx_task [idpf]
> [  805.727247] Call Trace:
> [  805.727249]  <TASK>
> [  805.727251]  dump_stack_lvl+0x77/0xb0
> [  805.727259]  __lock_acquire+0xb3b/0x2290
> [  805.727268]  ? __irq_work_queue_local+0x59/0x130
> [  805.727275]  lock_acquire+0xc6/0x2f0
> [  805.727277]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
> [  805.727284]  ? _printk+0x5b/0x80
> [  805.727290]  _raw_spin_lock_bh+0x38/0x50
> [  805.727298]  ? idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
> [  805.727303]  idpf_mac_filter_async_handler+0xe9/0x260 [idpf]
> [  805.727310]  idpf_recv_mb_msg+0x1c8/0x710 [idpf]
> [  805.727317]  process_one_work+0x226/0x730
> [  805.727322]  worker_thread+0x19e/0x340
> [  805.727325]  ? __pfx_worker_thread+0x10/0x10
> [  805.727328]  kthread+0xf4/0x130
> [  805.727333]  ? __pfx_kthread+0x10/0x10
> [  805.727336]  ret_from_fork+0x32c/0x410
> [  805.727345]  ? __pfx_kthread+0x10/0x10
> [  805.727347]  ret_from_fork_asm+0x1a/0x30
> [  805.727354]  </TASK>
>
> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
> Reported-by: Ray Zhang <sgzhang@google.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 21 +++++++------------
>  1 file changed, 8 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/ne=
t/ethernet/intel/idpf/idpf_virtchnl.c
> index 6b9692b30040..8ceabd86e172 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -546,32 +546,24 @@ static int
>  idpf_vc_xn_forward_async(struct idpf_adapter *adapter, struct idpf_vc_xn=
 *xn,
>                          const struct idpf_ctlq_msg *ctlq_msg)
>  {
> -       int err =3D 0;
> -
>         if (ctlq_msg->cookie.mbx.chnl_opcode !=3D xn->vc_op) {
>                 dev_err_ratelimited(&adapter->pdev->dev, "Async message o=
pcode does not match transaction opcode (msg: %d) (xn: %d)\n",
>                                     ctlq_msg->cookie.mbx.chnl_opcode, xn-=
>vc_op);
>                 xn->reply_sz =3D 0;
> -               err =3D -EINVAL;
> -               goto release_bufs;
> +               return -EINVAL;
>         }
>
> -       if (xn->async_handler) {
> -               err =3D xn->async_handler(adapter, xn, ctlq_msg);
> -               goto release_bufs;
> -       }
> +       if (xn->async_handler)
> +               return xn->async_handler(adapter, xn, ctlq_msg);
>
>         if (ctlq_msg->cookie.mbx.chnl_retval) {
>                 xn->reply_sz =3D 0;
>                 dev_err_ratelimited(&adapter->pdev->dev, "Async message f=
ailure (op %d)\n",
>                                     ctlq_msg->cookie.mbx.chnl_opcode);
> -               err =3D -EINVAL;
> +               return -EINVAL;
>         }
>
> -release_bufs:
> -       idpf_vc_xn_release_bufs(xn);
> -
> -       return err;
> +       return 0;
>  }
>
>  /**
> @@ -631,7 +623,10 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapte=
r,
>                  * can evaluate the response.
>                  */
>                 xn->reply_sz =3D ctlq_msg->data_len;
> +               idpf_vc_xn_unlock(xn);
>                 err =3D idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
> +               idpf_vc_xn_lock(xn);
> +               idpf_vc_xn_release_bufs(xn);
>                 idpf_vc_xn_unlock(xn);
>                 idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
>                 return err;
> --
> 2.37.3
>
