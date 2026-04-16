Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GERxAGgh4WnMpQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:50:32 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249B4134F8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Apr 2026 19:50:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F30A260870;
	Thu, 16 Apr 2026 17:50:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 64Nt2uqGOJgF; Thu, 16 Apr 2026 17:50:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77DA46086F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776361829;
	bh=zXhWQiWYqhCW6r3ekdup8+QEuKfSdHIfYm4xq2OKTH4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kt7Ja/kf2OIY+Ahbe1w+GdUTpFNDlpTXbv9R2HHR2D8SPC14nNcZ2eRr/uITUNseO
	 mhpa03zflWDwC5dkN8X2p3nzclp0yOVPa7sozIQ66vVCEPGE2PkNQhfwxu/xGLUFUK
	 Q7jYLczStJxePZohk2JWPu4shmp+HqNPEtnBgerl98NmnR9C77TzuIyLHlujCEO/fQ
	 KgQ0KBBIjn+BrAhslKsnYKGpZDdfzu/H9tBT8/vhZcGSfdbnem49lZh8COFllr96gP
	 1zFOLfKrdJi1jFpq0yZO9MwHEHLhziAwQ2jw/dApBW+PYV5VrWvRhgNzzIPq648Co5
	 9rb/elJt0FXSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77DA46086F;
	Thu, 16 Apr 2026 17:50:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id DF5FC2CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:50:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C5A6160787
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:50:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Olyg9wVOs-Pl for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 17:50:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::b6; helo=out-182.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 44E9760822
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44E9760822
Received: from out-182.mta0.migadu.com (out-182.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::b6])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 44E9760822
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 17:50:23 +0000 (UTC)
Message-ID: <919ce78a-45fc-4f4c-817b-154dd7c1cd00@linux.dev>
Date: Thu, 16 Apr 2026 18:50:09 +0100
MIME-Version: 1.0
To: Petr Oros <poros@redhat.com>, netdev@vger.kernel.org
References: <20260416113952.389405-1-poros@redhat.com>
 <20260416113952.389405-2-poros@redhat.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20260416113952.389405-2-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1776361819;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zXhWQiWYqhCW6r3ekdup8+QEuKfSdHIfYm4xq2OKTH4=;
 b=QiPVSyrejWyDHsNCEaiyiEI3lF/sWkn4f2E0ZTkTmh1mRiAXZke8yGWHta7//8qfE1RcSb
 4PsGSupK9A/Ti4o32zaomK3MBDt3jSHTa2SJcIbFW54xgOQY2ZyV8DkPfKdOM5dvBHHey5
 gO8RelDJx7140pEpKUOHav+cVsip4Ks=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=QiPVSyre
Subject: Re: [Intel-wired-lan] [PATCH net v6 1/2] dpll: export
 __dpll_pin_change_ntf() for use under dpll_lock
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
Cc: Ivan Vecera <ivecera@redhat.com>, Jiri Pirko <jiri@resnulli.us>,
 Rinitha S <sx.rinitha@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, linux-kernel@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Simon Horman <horms@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:jiri@resnulli.us,m:sx.rinitha@intel.com,m:przemyslaw.kitszel@intel.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vadim.fedorenko@linux.dev,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6249B4134F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 16/04/2026 12:39, Petr Oros wrote:
> From: Ivan Vecera <ivecera@redhat.com>
> 
> Export __dpll_pin_change_ntf() so that drivers can send pin change
> notifications from within pin callbacks, which are already called
> under dpll_lock. Using dpll_pin_change_ntf() in that context would
> deadlock.
> 
> Add lockdep_assert_held() to catch misuse without the lock held.
> 
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> Signed-off-by: Petr Oros <poros@redhat.com>

Acked-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
