Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHEUBqJc/GndOQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:34:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 003984E6052
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 11:34:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8117B409D4;
	Thu,  7 May 2026 09:34:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HiM4y-h5Misg; Thu,  7 May 2026 09:34:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E416340A47
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778146462;
	bh=0RDPZxyyoA+nLVJX1tOhu7GRz/OpeQnLIvnlbEm9kx4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gVj7WJpBnv4YSBYhAzcS9fYShSIKNVWfUlCMtr92mqRKjvkDDw6xer6MteHOelVO3
	 FD/9/8wsrTA3x8ElidTfkJKPf/DCSM8E3/AuNp4UYXMHGUbFxYiL6yvUgpcln2V/rR
	 ZMZCdxYltbZJmtHVzAUm6jScdtqyWFsT2IDMpHJfLMDeXlsAyaDLHBtH8qaD5WYHd2
	 gM2X50iPILdjN49z33o11SUKRgKMptZ4s/QtGoWDV679T15vwX5fV11INRwwXSP6pX
	 WF9TdZ5o09kF/g9GqJPhKsrENl9rd8kmn+HaPXMh8IRkoajFSfjMZvMBXKGF6MmhAm
	 hlTX7IWaMtHtw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E416340A47;
	Thu,  7 May 2026 09:34:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D0596317
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B60F7409D4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P2Y9pKloUoVl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2026 09:34:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com;
 envelope-from=matt@readmodwrite.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 562B7409C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 562B7409C7
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 562B7409C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2026 09:34:19 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-44c350a5b87so384750f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 07 May 2026 02:34:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778146457; x=1778751257;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=0RDPZxyyoA+nLVJX1tOhu7GRz/OpeQnLIvnlbEm9kx4=;
 b=mYAlPpLt8hP9vXZTQ/l0ni4J/byQg2ryvcnWA9qHiFfzMSEswNbQfjvJR6RvYpLyVE
 0m3Wdf912V9n21xsS2x6ubTHd/WnjxE7oKtYbkCyPF6wE/2G1tdJmXwq1dEO4dIJr7xm
 znDZKETVo/d7VDZmSoSxYbyIf6E4ADJJEFZfK0uNgr7G+no+FvVJEWoVyK/+2Ccfa7Tm
 FlvRap920GHo+xleOVsz+2j4GvzmxM0yB759gf8MdVae0RqMX2BydO9PdFNcld76/glx
 IWAq7Gg3hIYslwSK0OtN21bESwBnVDOq4Ls2OLfo+HqSXx1oes4PBnP75Lx1jqdmtsYs
 FgbA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8CGewkwCwsFBeaFMiw0OXaJtsbqabQ24FOPPK3v2HgxnAOzrEE77njdumpmGfbUbZD5fHMLfxk7B9eJAGl3k4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxhuoQZ+eBrYZLzSfHQsqlOqCDo5Er7R5kDLJWdvWems0ARrFeq
 zWD6HSyJxAxvk1Hae8x3QTfiaw/XOaOeEfiDHWq0eILsmZtou7/DxQrG38jpzEccjlo=
X-Gm-Gg: AeBDieuvcp7Eb+GTI+alhuNxkkpg0DAG82G5yuTmL5terDT8qYkYhAmlXuvR9cMtvD+
 9qcwyDq8UGwSToJiiCWt8F9dXbib4H+9WSvkK6Irwy5dllodACaPD9vpBy5LOnIIOMigj3TkcDH
 lRS4roHui14g251PGsIQGNzkQM4cq3Lx/AmdmbSy1pmIrmukQPFDk2woIaH+KnEJovfp0s/E+lf
 cg634Kv9oJzSkxwdiRrRp0fqUHB/yn1q/RcAV0Wbe8RLfmQvnixfBWoqe8rbEGm8TbYsmFXrihX
 RfGtIp6IhkoavHKyRX10deHObBE9oLccI7vOYTI8NdtqE3vbPAk22IPXOTKKiG/XyqUqWTTninE
 obRbzFRB//4fHaTDOuUXdk5J+wnlPIShNIGuKGyY+v9CkI0ZZk3FQB4fUUpNFLjyHrQWAbjH4je
 UulqGzeTecN7MED1itKFa0
X-Received: by 2002:a05:6000:2c0c:b0:43d:7e11:1b72 with SMTP id
 ffacd0b85a97d-4515a6c32dfmr11386364f8f.9.1778146456983; 
 Thu, 07 May 2026 02:34:16 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:294b::41d:50])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-4505238e7c0sm17157280f8f.3.2026.05.07.02.34.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2026 02:34:16 -0700 (PDT)
Date: Thu, 7 May 2026 10:34:15 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, kernel-team@cloudflare.com,
 Matt Fleming <mfleming@cloudflare.com>, stable@vger.kernel.org,
 Simon Horman <horms@kernel.org>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Eric Joyner <eric.joyner@intel.com>, Paul Greenwalt <paul.greenwalt@intel.com>,
 Alice Michael <alice.michael@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <afxbZjldi1OC3HmS@matt-Precision-5490>
References: <20260501095717.1032151-1-matt@readmodwrite.com>
 <531aec13-c33f-4e77-ab48-de8861f9b6c6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <531aec13-c33f-4e77-ab48-de8861f9b6c6@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1778146457;
 x=1778751257; darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=0RDPZxyyoA+nLVJX1tOhu7GRz/OpeQnLIvnlbEm9kx4=;
 b=vqh4b6GfryUexW19nKGTeCQzt+vD0GnT7YX96LCWKCdC1R2l6rUMdkwlU74sgswaba
 zOMQxPepjyH/mpokRtSsr0tzUBIhAbCwWOFgpJv3h2fb6MLCVo4C3MHlbQTBqsJw9wZr
 JoyOJXeEBNkwUoZeZTumwYndDWrhGnWq9EbNPO0kAji+AZ47QU+L0YI671Fzv/oClY3Z
 DQ81InMJR9NSuPb2rFGWomT9EoWnUKRfrI7RI1AyUA7jdZy9pOiHO8kpa5XpXPhkqkMX
 JTBSApEELNNTe44iHQt0SqUkVHXOewm9xCJjNFhc3QvlMtMM3vAwwnBNeCO6LOp4SMja
 cBNA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=readmodwrite.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=readmodwrite-com.20251104.gappssmtp.com
 header.i=@readmodwrite-com.20251104.gappssmtp.com header.a=rsa-sha256
 header.s=20251104 header.b=vqh4b6Gf
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix missing 1's
 complement negation in GCS raw checksum
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 003984E6052
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:kernel-team@cloudflare.com,m:mfleming@cloudflare.com,m:stable@vger.kernel.org,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:eric.joyner@intel.com,m:paul.greenwalt@intel.com,m:alice.michael@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	DMARC_NA(0.00)[readmodwrite.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Mon, May 04, 2026 at 05:10:23PM -0700, Jacob Keller wrote:
> 
> Hi,
> 
> Based on your patch description, I assume that you've tested this on
> real hardware.
> 
> I dug a little through some of our internal changes history and sawe
> that it looks like the hardware has a register setting in its
> GL_RDPU_CNTRL register which determines whether the checksum value
> reported is inverted or not. In E830 hardware, it is supposed to be off
> (i.e. the checksum value reported already matches the expected setting.
> 
> Perhaps your device somehow got the GL_RDPU_CNTRL register set to the
> wrong mode and that results in the swap being necessary. Hmm.
> 
> I'll ask the team to see if they can confirm this behavior.

Hi Jake,

Thanks for digging into this.

I read GL_RDPU_CNTRL on our affected E830 and the value is the same on
both ports of the NIC:

  0000:c1:00.0: GL_RDPU_CNTRL = 0x0020a275
  0000:c1:00.1: GL_RDPU_CNTRL = 0x0020a275

Decoding bit 22 (E830_GL_RDPU_CNTRL_CHECKSUM_COMPLETE_INV) gives 0,
i.e. the hardware is supposedly in "not inverted" mode, which matches
the default you described.

However, looking at the data on the wire I see:

  - netdev_rx_csum_fault fires ~65 000 times/sec on this host.
  - bpftrace at fexit:ice_process_skb_fields shows skb->csum =
    swab16(raw_csum) directly (no negation), e.g. raw_csum=0xfb4f
    -> skb->csum=0x4ffb.
  - At fentry:__skb_checksum_complete the upper 16 bits of skb->csum
    are 0xFFFF on every TCP/UDP packet -- the signature of nf_ip_checksum
    adding the pseudo-header to a value that was the un-negated raw_csum.
  - fold2(skb->csum_at_fentry + skb_checksum(skb,0,len,0)) ≈ 0xFFFF
    for every packet, which means the two values are ones-complement
    complements of each other, i.e. the driver stored S where the
    stack expects ~S.

Negating the checksum makes the failures go away.

Thanks,
Matt
