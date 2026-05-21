Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNtCAob5DmoSDwYAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:24:38 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A735A4BAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 May 2026 14:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A3FA60AF9;
	Thu, 21 May 2026 12:24:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SKuulZRCV1tw; Thu, 21 May 2026 12:24:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E3F1361757
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779366274;
	bh=6Sq2Ha1ZC8o+rRc7gR1Qy/D/3XJfFdHu8duTVUUw/fQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7L9NoX5N4XiuBrcVWPwCVSPIlicdTGaCHOkn/fh0rUuJeEJD4fD55P5k4sRwGUd9K
	 AVROl0d5mRcafT2GVjMBXEqYBiOKuRDf3Ky2C/ELiBK+1kSuEGFASeu7rItP6X6Utk
	 xkIraltE9XiWnViHAgUmUyzMzp5qH1cfMT1Ae/K7Lo6uc8GsqXIJz3I7BHd2RT4ERG
	 A2zoLv1Sdqy+lbYTBrL48zClQJg0DUi4JmQC5HF2LMHtRGzMjNfgzOG4yjaSRAWcoR
	 TllrwjyRM+OuJTjJyU3LWczK0eL0qrTi2Q8OUKfe+qFdd0978jj/hE+DN2/oVi2zYP
	 Rlu59HW0Udj1w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E3F1361757;
	Thu, 21 May 2026 12:24:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EF3E9D3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D49FC4154D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ypDStrjVCTkS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 May 2026 12:24:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5CE2C40599
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5CE2C40599
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5CE2C40599
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 May 2026 12:24:31 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wQ2Rm-00411s-2F; Thu, 21 May 2026 14:24:18 +0200
Date: Thu, 21 May 2026 14:24:18 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Ashwin Gundarapu <linuxuser509@zohomail.in>
Cc: "anthony.l.nguyen@intel.com" <przemyslaw.kitszel@intel.com>,
 andrewnetdev <andrew+netdev@lunn.ch>, davem <davem@davemloft.net>,
 edumazet <edumazet@google.com>, kuba <kuba@kernel.org>,
 pabeni <pabeni@redhat.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 netdev <netdev@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Message-ID: <db588334-0871-4b83-a020-da8f621816d5@lunn.ch>
References: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <19e49280392.4757403170773.5767589851918809405@zohomail.in>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=6Sq2Ha1ZC8o+rRc7gR1Qy/D/3XJfFdHu8duTVUUw/fQ=; b=sLOUzZvCCAz6CYaKHMGpe2AFD/
 GrJoU5KRtsxRsew7SdzfePt/+2C7sZigzcmH30yqXDryrfhlTQ2zDn7WCEVUO80qKQqslPu4H7fLu
 mVcYaY4WpBtvcD4jOLXx4jWSlWR86edXqixhLH+OkOEbBzK45KXs9ozWdItZVvQ9MrRw=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=sLOUzZvC
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: e100: replace silent
 'hope for the best' with debug message
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linuxuser509@zohomail.in,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 80A735A4BAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 21, 2026 at 11:40:19AM +0530, Ashwin Gundarapu wrote:
> From: Ashwin Gundarapu <linuxuser509@zohomail.in>
> Date: Sun, 10 May 2026 15:09:12 +0530
> Subject: [PATCH] net: e100: replace silent 'hope for the best' with debug
>  message
> 
> Replace a silent return with a debug message when no MII PHY is
> detected on known variants. This gives users visibility into the
> failure instead of silently hoping for the best.
> 
> Found by checkpatch.pl inspection.

Please make sure you really do compile test your changes.

Also, look at the history of a driver. How old is e100? I guess this
driver has been around 20 years? If this was an issue, somebody would
of fixed it 15 years ago? 10 years ago?

Please consider checkpatch as a tool which says there _might_ be an
issue at this line of code, not there _is_ an issue at this line of
code. You need to look at it, think about it, consider all the ways
checkpatch could be wrong, and only once you have convinced yourself
checkpatch is correct, fix it.

    Andrew

---
pw-bot: cr
