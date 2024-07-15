Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AF750931321
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 13:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 572B1607DD;
	Mon, 15 Jul 2024 11:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XA3w3Th1FjL3; Mon, 15 Jul 2024 11:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 847E16079F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721043259;
	bh=J7xpTlNWKSsTCrvwopXnKlFCYuKohhqt/axMz6/Ds/c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=t2X2hNfhQ54cRo2HN0dQ1ThElascssk75cnGRjVnLKCyiBD5uuKO83ETW8ADoi6it
	 vAR/RIVD9dWJtUxfZ7KwJ0qdFY+OMFLcO2MeC9zGef+tZLyJIy5dOFTPZjkPuCh/qg
	 JoR2rWmYf3lmr9NhEIgwgaDPPF0VMlLXl0P3xmjhZ+YLTuP4u8Com7CuRoPLkDaUoe
	 D6HOATrceXD9mGrJUFWFZ+A6XUo96hEC1cQqv5g0RQh6FC1nemnyvvHFgdy61XFFRS
	 q5a7+lsz9Z/ddwgZi36hbt999Zem2NGnBdulUtIcaOFy03btQRvYBOXYwAF9uyTgNr
	 wr/2lDt3Unh1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 847E16079F;
	Mon, 15 Jul 2024 11:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1FD1BF3D9
 for <intel-wired-lan@osuosl.org>; Mon, 15 Jul 2024 11:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 47BBF605CE
 for <intel-wired-lan@osuosl.org>; Mon, 15 Jul 2024 11:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOqbMa0jckrv for <intel-wired-lan@osuosl.org>;
 Mon, 15 Jul 2024 11:34:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=88.99.2.238;
 helo=mx0.woks-audio.com; envelope-from=benjamin.steinke@woks-audio.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 17649605A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 17649605A6
Received: from mx0.woks-audio.com (mx0.woks-audio.com [88.99.2.238])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 17649605A6
 for <intel-wired-lan@osuosl.org>; Mon, 15 Jul 2024 11:34:15 +0000 (UTC)
From: Benjamin Steinke <benjamin.steinke@woks-audio.com>
To: <intel-wired-lan@osuosl.org>, Kurt Kanzenbach <kurt@linutronix.de>
Date: Mon, 15 Jul 2024 13:34:11 +0200
Message-ID: <16778076.kXn58iQkRG@desktop>
In-Reply-To: <87cyo2fgnm.fsf@kurt.kurt.home>
References: <20230804084051.14194-1-sriram.yagnaraman@est.tech>
 <3253130.2gtjKKCVsX@desktop> <87cyo2fgnm.fsf@kurt.kurt.home>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-ClientProxiedBy: EX1.jas.loc (10.100.2.20) To EX1.jas.loc (10.100.2.20)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=woks-audio.com; 
 h=cc:cc:content-transfer-encoding:content-type:content-type
 :date:from:from:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=woks; bh=J7xpTlNWKSsTCrvwopXn
 KlFCYuKohhqt/axMz6/Ds/c=; b=EtvVcCtScC2cpKeH7QyV6FoIFUg3GX2dRPZa
 eXmmiMT8yv0wZlRwurE7l3EqHqb6HkAaWMnHOIeS/a+lltfrjV1zOS7EroMsH3ak
 PftJYjRQeVpnySaY1hICRDRLySA5XV5VEyb50xscve8tPCbPXMpjL9MnKy9LDZhE
 6ilA96Ag+d6BZbiYbjV3fma1Fxs/1WkhpG7bxaW9gFZzf5KTcJzclrs2x1ZdpkXg
 qdyOVBVjl6rbibY4DrKLERSuYC/OKoI/WG93OmBB6DUbClBB9JVJWUsqBwYA8Fs3
 /+/IwbYCkUH7sLyr6bRgdHx4FQCjqMLW3rD97NmpA3ySDEJsaQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=woks-audio.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=woks-audio.com header.i=@woks-audio.com
 header.a=rsa-sha256 header.s=woks header.b=EtvVcCtS
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/4] igb: Add support for
 AF_XDP zero-copy
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 =?ISO-8859-1?Q?Bj=F6rn_T=F6pel?= <bjorn@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thursday, 27 June 2024, 19:18:37 CEST, Kurt Kanzenbach wrote:
> Hi Benjamin,
> 
> On Thu Jun 27 2024, Benjamin Steinke wrote:
> > On Thursday, 27 June 2024, 09:07:55 CEST, Kurt Kanzenbach wrote:
> >> Hi Sriram,
> >> 
> >> On Fri Aug 04 2023, Sriram Yagnaraman wrote:
> >> > The first couple of patches adds helper funcctions to prepare for
> >> > AF_XDP
> >> > zero-copy support which comes in the last couple of patches, one each
> >> > for Rx and TX paths.
> >> > 
> >> > As mentioned in v1 patchset [0], I don't have access to an actual IGB
> >> > device to provide correct performance numbers. I have used Intel
> >> > 82576EB
> >> > emulator in QEMU [1] to test the changes to IGB driver.
> >> 
> >> I gave this patch series a try on a recent kernel and silicon
> >> (i210). There was one issue in igb_xmit_zc(). But other than that it
> >> worked very nicely.
> > 
> > Hi Kurt and Sriram,
> > 
> > I recently tried the patches on a 6.1 kernel. On two different devices
> > i210 & i211 I couldn't see any packets being transmitted on the wire.
> > Perhaps caused by the issue in igb_xmit_zc() you mentioned, Kurt? Can you
> > share your findings, please?
> 
> Yeah, that's exactly the issue.
> 
> Following igb_xmit_xdp_ring() I've added PAYLEN to the Tx descriptor
> instead of setting it to zero:
> 
> igb_xmit_zc()
> {
>         [...]
> 
> 	/* put descriptor type bits */
> 	cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
> 		   E1000_ADVTXD_DCMD_IFCS;
> 	olinfo_status = descs[i].len << E1000_ADVTXD_PAYLEN_SHIFT;
> 
> 	cmd_type |= descs[i].len | IGB_TXD_DCMD;
> 	tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> 	tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> 
> 	[...]
> }
> 
> Afterwards packets are transmitted on the wire.

Hi Kurt,

I can confirm this makes the transmitter work.
Thank you for taking over this patch series and continue to bring this 
upstream. I will continue testing on this.
 
> > RX seemed to work on first sight.
> 
> Yes, Rx works even with PTP enabled.

I can confirm this as well. 

Best regards,
Benjamin





