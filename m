Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOiRFpZli2kMUQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:06:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F69B11D8D2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Feb 2026 18:06:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1FB060DEE;
	Tue, 10 Feb 2026 17:06:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9xLk09F8AFxi; Tue, 10 Feb 2026 17:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3AB7360B18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770743187;
	bh=YezTYZm45Fc+/sBHnpyG3y/+AmmZnnp675nXVb6MGag=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Sc9M78ghPc7ec+3ss6J6H5p5R9EdviVRr0dD6G8HbxcXQ0W5eTljPSrMSCyG7eGI/
	 lWg3W1N22nu6BM6hPacSrCHei/TFkwEFBrR9hoXnDqi5t8BKyNPMrcZsKjMn44T72c
	 AjjWduZKeAYRk1PtL+gjPIkaWKl5IYtQbcqyjC3cTFgdVRukJohyB1f+pcPrL0oZAP
	 5IjWQWB/9h3DzCioDRkDGxY2+JYdn9owUWSJkB5qZPZKfRRiYPBVcMDtilqdOCg9ve
	 5IA18yXl7bcQN+xFxEwLDTFDo1zmGUk7Tk8udmdho2YEzdOKoUfjcWlp8wxFBnCRlK
	 iX2RhCIHT/q4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AB7360B18;
	Tue, 10 Feb 2026 17:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 47D171A9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37F4360A65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:06:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b3e3CVz7dMix for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Feb 2026 17:06:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 489E6608FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 489E6608FB
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 489E6608FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Feb 2026 17:06:24 +0000 (UTC)
Received: from ms-a2 (227.25.31.150.dy.iij4u.or.jp [150.31.25.227])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 61AH63Pl051026
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 11 Feb 2026 02:06:03 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: aleksander.lobakin@intel.com
Cc: andrew+netdev@lunn.ch, anthony.l.nguyen@intel.com, davem@davemloft.net,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 kohei.enju@gmail.com, kohei@enjuk.jp, kuba@kernel.org,
 netdev@vger.kernel.org, pabeni@redhat.com, przemyslaw.kitszel@intel.com
Date: Tue, 10 Feb 2026 17:05:55 +0000
Message-ID: <20260210170603.149842-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <c48f08ad-b402-4cfe-a362-4cb0c3a7801f@intel.com>
References: <c48f08ad-b402-4cfe-a362-4cb0c3a7801f@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=YezTYZm45Fc+/sBHnpyG3y/+AmmZnnp675nXVb6MGag=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770743164; v=1;
 b=uRapuCaqjzt2tSLkJafgkf45ZonwnV6PnUlsd0owq2EDy+33vnVuPpvt0BGl8hwa
 615kND/WPvWQi84vSX8vQO8lV5u52HLPfPOojUmj+EEXRb6eUlzkD6KgWhXerg1k
 eZxNSNDxZYZ7zkSmG2w1pj7/bx8i0dRMgnI37QDwiVpWM2twqUQ8DTWXvK7jFZqN
 MeaXZJ6HTl/exE2sTlfaphyqbJ7+VxQcR2hQHt8P4EpGeaB1Dx/cgRqhNoDMllEr
 MfqW3fH744oNl6zM9SF992V3lhT6z6alCGQq/WF8G8O/61j/r2otpovqP+0lgvHm
 3/phIwHRCaT5VzuerB9LdQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=uRapuCaq
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] iavf: fix netdev->max_mtu
 to respect actual
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kohei.enju@gmail.com,m:kohei@enjuk.jp,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,m:koheienju@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,intel.com,davemloft.net,google.com,lists.osuosl.org,gmail.com,enjuk.jp,kernel.org,vger.kernel.org,redhat.com];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:mid,enjuk.jp:email,intel.com:email,osuosl.org:dkim];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 4F69B11D8D2
X-Rspamd-Action: no action

On Tue, 10 Feb 2026 17:37:23 +0100, Alexander Lobakin wrote:

> From: Kohei Enju <kohei@enjuk.jp>
> Date: Tue, 10 Feb 2026 15:57:14 +0000
> 
> > iavf sets LIBIE_MAX_MTU as netdev->max_mtu, ignoring vf_res->max_mtu
> > from PF [1]. This allows setting an MTU beyond the actual hardware
> > limit, causing TX queue timeouts [2].
> > 
> > Set correct netdev->max_mtu using vf_res->max_mtu from the PF.
> > 
> > Note that currently PF drivers such as ice/i40e set the frame size in
> > vf_res->max_mtu, not MTU. Convert vf_res->max_mtu to MTU before setting
> > netdev->max_mtu.
> > 
> > [1]
> >  # ip -j -d link show $DEV | jq '.[0].max_mtu'
> >  16356
> > 
> > [2]
> >  iavf 0000:00:05.0 enp0s5: NETDEV WATCHDOG: CPU: 1: transmit queue 0 timed out 5692 ms
> >  iavf 0000:00:05.0 enp0s5: NIC Link is Up Speed is 10 Gbps Full Duplex
> >  iavf 0000:00:05.0 enp0s5: NETDEV WATCHDOG: CPU: 6: transmit queue 3 timed out 5312 ms
> >  iavf 0000:00:05.0 enp0s5: NIC Link is Up Speed is 10 Gbps Full Duplex
> >  ...
> > 
> > Fixes: 5fa4caff59f2 ("iavf: switch to Page Pool")
> > Signed-off-by: Kohei Enju <kohei@enjuk.jp>
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> Although I'm not sure the 'Fixes:' tag is correct. Was vs_res->max_mtu
> accounted before switching to Page Pool? If so, then yes, my fault.
> Otherwise, this issue is older than libie.

You're right that vf_res->mtu was also not accounted before the commit.

The commit changes:
-       netdev->max_mtu = IAVF_MAX_RXBUFFER - IAVF_PACKET_HDR_PAD;
+       netdev->max_mtu = LIBIE_MAX_MTU;
...
-#define IAVF_MAX_RXBUFFER   9728  /* largest size for single descriptor */

and thus netdev->max_mtu was already hardcoded, but just because
IAVF_MAX_RXBUFFER was valid for VFs there hadn't been any issues, and
invalid MTU could start to be set after the commit.

> I'm asking as IIRC before I did set max_mtu to the libie definition,
> there was a hardcoded value already.

Yea, as far as I checked the value was hardcoded from the beginning
(91c527a55664 ("ethernet/intel: use core min/max MTU checking")).

Although I'm not attached to the exact commit as the Fixes: tag, I chose
that since (coincidently) that commit made this regression.
