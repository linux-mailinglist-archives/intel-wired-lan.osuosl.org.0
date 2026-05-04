Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6ES8DL+e+GnHxAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:27:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BA64BDE0B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:27:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 097ED84560;
	Mon,  4 May 2026 13:27:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WlujGgfjh1Lb; Mon,  4 May 2026 13:27:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9BD22844CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777901243;
	bh=sf8GrloyhDcDE0JIcXxVsYAPHoYQg8R8OEPXBypIWtk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nFqJtOezVjn1Ea535WatLJhTI0ruQsdt6F96PXtjNu5Vgrt9U1d4n2vrE8f4+T0tr
	 s5JDGXZUQa+zXeWGObsOyZrGSeHLBUVJbc7nTpzgY1QLQCkeRbVFb/eHHA4AyIKSk4
	 kQVDmEiUXJ6pXAh6FynqomkbVxxAMHQgnmIgzPosJPPeK1yT717jYYcSYdgdCQIrSV
	 1ad6aJyhqB3U+LNzzMQCXjRvNj4JIi8q3bIGo0TqOQ8/ZYl8m+OYb+8g9jl5qSkh61
	 kVtOneyPurk2kDaZ8WWYkNemCsXHziWQcOJD/Q53fe55ACDhDSEaS6pi9DpLq7DRKX
	 1H5UoVppjRiBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9BD22844CF;
	Mon,  4 May 2026 13:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A1492190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 91E6D41A3F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n4H3itK9fQUy for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 13:27:21 +0000 (UTC)
X-Greylist: delayed 1818 seconds by postgrey-1.37 at util1.osuosl.org;
 Mon, 04 May 2026 13:27:21 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 68042419EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68042419EB
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 68042419EB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:27:21 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1wJsqy-001GIp-Kw; Mon, 04 May 2026 14:56:52 +0200
Date: Mon, 4 May 2026 14:56:52 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: David Carlier <devnexen@gmail.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <2e4cc698-70da-4305-ad0c-b5258f029daf@lunn.ch>
References: <20260504062257.77460-1-devnexen@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260504062257.77460-1-devnexen@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=sf8GrloyhDcDE0JIcXxVsYAPHoYQg8R8OEPXBypIWtk=; b=w7pAD9IdOiU9ws7Vk7/0w0jJDK
 gNWkzXN+gg7jRKD+2XD79IoezU1UTa7QePCmPJyOWTJfhWO2Fk0IxFYmi3WMdwtVGRIN+ECvnxv6f
 yisuELJ2BO8yfV1hWy2U7IgWl0Qw2Ltd0OS98JKa3Eh2C4tmpVX4JQgFL4bLgUlyQlOk=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=w7pAD9Id
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: E610: do not fill EEE
 lp_advertised from local PHY caps
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
X-Rspamd-Queue-Id: D2BA64BDE0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lunn.ch : SPF not aligned (strict), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:jedrzej.jagielski@intel.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[14];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lunn.ch:mid,osuosl.org:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andrew@lunn.ch,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]

On Mon, May 04, 2026 at 07:22:57AM +0100, David Carlier wrote:
> ixgbe_get_eee_e610() fills kedata->lp_advertised from pcaps.eee_cap
> returned by ixgbe_aci_get_phy_caps() with IXGBE_ACI_REPORT_ACTIVE_CFG.
> That report mode (and the other IXGBE_ACI_REPORT_* modes) describe the
> local PHY only, not the link partner. The X550 path uses a separate
> FW_PHY_ACT_UD_2 activity for partner data; the E610 ACI has no
> equivalent.
> 
> Leave lp_advertised zeroed via the existing linkmode_zero() and drop
> the now-unused ixgbe_eee_cap_map[]. eee_active/eee_enabled are
> unaffected (sourced from link.eee_status).

Hi David

Did you test the EEE autoneg capabilities? Is just lp_advertise wrong,
or is the negotiation itself also broken?

	Andrew
