Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMitLhpU1mm8DQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:11:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F5A3BC9E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 08 Apr 2026 15:11:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 193DA40EBE;
	Wed,  8 Apr 2026 13:11:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yCukQvBiUuOO; Wed,  8 Apr 2026 13:11:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9BA1340EB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775653911;
	bh=UGQ67r6USA+flx1FAnz9wCvHAQQncWp3Wxkm5JwYX7c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=d3HORI5zrFpTKoipxBhTHT8cKGF30barQfiQHSwRTecjkMaP9gt9+xgqyhwsTyXRj
	 eDJxWNHV5ZdjqKWgJ+d9Kh8qg8aMA0h+TqRgor/Ml1yz4r1CWEx1Q+7KROaymwO7Tp
	 9zHoGQAPpOf18lHIhTwF9gR6hZw/KseJsPjNnj6NdYIduWdwgybgyxQkMfulOBuirI
	 2xIRtfCnBIA2jNQdnA+5iF562x6MuHixaylukYuZaarLBplzfhHNyjXZLfxgjMjMXs
	 2ZRVfP6LpK/Qxl94iD08HAFdkl6C6OAn4rpzw5XC7e3fsGrQ0lW/d9uCi2KpBsjJf0
	 hPcuQjaxOBXmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9BA1340EB7;
	Wed,  8 Apr 2026 13:11:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C94E82C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE2A440E9E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7fHxNSzJz5LH for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2026 13:11:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1B38740E98
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B38740E98
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B38740E98
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2026 13:11:47 +0000 (UTC)
Received: from x1 (13.3.31.150.dy.iij4u.or.jp [150.31.3.13])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 638DBRAt012252
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 8 Apr 2026 22:11:29 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Wed, 8 Apr 2026 22:11:27 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Simon Horman <horms@kernel.org>
Message-ID: <adZRkBXUJKZqAiS9@x1>
References: <20260408083644.1621317-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408083644.1621317-1-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=UGQ67r6USA+flx1FAnz9wCvHAQQncWp3Wxkm5JwYX7c=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1775653889; v=1;
 b=MFBfXvo1t7b8sFwFAmdphOrfgZfVVvxSCb+4NfRpPw0uUdD9B8mhHefPp4bk36LQ
 AWDyvUSSa1o5RAQA4IMCxMKdpnMHgZlm0Q3x8gEmJGQ+qbF04Pkgjz6wxm7jZOiC
 NgF6847RmsRRT3YIJyBHjChsErS+tRaJv5XLX3lq4IMXwp6SyRO8N/H/0ajSZTR1
 /prnGoiPyajVlHdg1nlgFnmxpLA9BSe/d6mccoDBNC66d+FzvqImqpMW9a+rhYt4
 kFGlxlYBgHPzSY+KFmBpdbpH2QJFOZTneUZltkjDGD1ehDaVpySreYPd7r99pv4o
 1C10Biq3nEmCQljEtIGWzA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=MFBfXvo1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] e1000e: use
 ktime_get_real_ns() in e1000e_systim_reset()
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
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:horms@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: C7F5A3BC9E3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 04/08 10:36, Aleksandr Loktionov wrote:
> Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
> ktime_get_real_ns() in e1000e_systim_reset().  Using the combined helper
> avoids the unnecessary intermediate ktime_t variable and makes the
> intent clearer.

FYI, e1000e_xtal_tgp_workaround(), introduced in a recent commit, has
the same pattern as well, though that commit only exists in Tony's tree.

Also, igc has the same pattern in igc_ptp_reset(). It may be worth
sending a follow-up patch for that as well?
