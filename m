Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AvXCE64c2n/yAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 19:05:02 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCAE79565
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jan 2026 19:05:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8C5E4076F;
	Fri, 23 Jan 2026 18:04:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AUhGOmUEzHqB; Fri, 23 Jan 2026 18:04:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79301406C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769191498;
	bh=VOM4SyNA68QQ2p8aAOF41WvlFHdTbeExsr9QyIlsXUY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lxoy5o7TsyWBg/EzyFMmttrrL3R+XfoaU3Qp3JBDnajsCyl4wiOxkY+1+9L3BpxlF
	 DMe0Q/ihCNrgYI7irICZz0NKtaPZh4eLVKtkyNZLldkME+mLE62TjwdqoGisL+luaj
	 EOH84t1XB4OwGzdqZcj+acawL+Ozd1H6SSWlnIh7lswKICXyQMEmPvrIvz3eHh4Cvo
	 YCEidnleBlIG+q6MXAYr1yqySmvZdZAah85rWw87PMW3qt9A9HuUYR6IJ+JbBuOZo1
	 IekX8cvwdBBBZCaAVhZNkaN1m9488SRhlu/7A2QozZ4Br6Cgql/EO8Y5sQmv3Kncn3
	 rlOPi+eZY+rgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 79301406C0;
	Fri, 23 Jan 2026 18:04:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E9AC9122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:04:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DA64660894
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:04:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nbm10TjWOX5N for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jan 2026 18:04:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0CA7F60892
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CA7F60892
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CA7F60892
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jan 2026 18:04:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 3BE3B44596;
 Fri, 23 Jan 2026 18:04:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72716C4CEF1;
 Fri, 23 Jan 2026 18:04:49 +0000 (UTC)
Date: Fri, 23 Jan 2026 18:04:47 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <aXO4PzKrud1h3uYL@horms.kernel.org>
References: <20260116184610.147591-9-ivecera@redhat.com>
 <20260121001650.1904392-2-kuba@kernel.org>
 <f676c151-e871-4b2e-83f6-6d62bc146337@redhat.com>
 <aXOMiAhf-NdQTonz@horms.kernel.org>
 <6da98781-9cf2-4756-a6b1-89cc650c9bce@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6da98781-9cf2-4756-a6b1-89cc650c9bce@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769191495;
 bh=0DvNaXsBMKsLBkqZft0cqd9Fzf0jP09zTVPIXy7A82Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dw3YL1b4wRL0gdmgXTHfy275iYbUQUxqlxtSSSygZ+j2gf0OINHEbN351xA3Ob0mJ
 XW/2t3eZNrkwIEAWj96KY6Cw9L+EqDtPezRJPJjacGPT69rkq7oO/DzRp7hGf9YFA9
 JyDnqzyZeTVFa9Q0c/dOfKJC7b/ymlhz7pUZIiNaIdaFCThb3TfCdbEyCJsoIH0lFe
 dmqO/vRYoqce7mCECBwS/q4p4p1YuaXi/lO8TLtnCe/kW3yorCoTaRqXqejwPWVo1m
 XJWi1LGt9yI4yVBAULOtYqRoXjcVHoALzN6j+O0KKxsTfDt6RfMsaZfmgtM4bxFddW
 YaWjnc5CpBkcw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=dw3YL1b4
Subject: Re: [Intel-wired-lan] [net-next, v2,
 08/12] dpll: Enhance and consolidate reference counting logic
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
Cc: edumazet@google.com, anthony.l.nguyen@intel.com, robh@kernel.org,
 leon@kernel.org, andrew+netdev@lunn.ch, linux-rdma@vger.kernel.org,
 przemyslaw.kitszel@intel.com, arkadiusz.kubalewski@intel.com,
 aleksandr.loktionov@intel.com, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com,
 devicetree@vger.kernel.org, conor+dt@kernel.org, jiri@resnulli.us,
 richardcochran@gmail.com, saravanak@kernel.org, Prathosh.Satish@microchip.com,
 vadim.fedorenko@linux.dev, netdev@vger.kernel.org, mbloch@nvidia.com,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, aleksander.lobakin@intel.com,
 jonathan.lemon@gmail.com, krzk+dt@kernel.org, saeedm@nvidia.com,
 davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,kernel.org,lunn.ch,vger.kernel.org,lists.osuosl.org,redhat.com,resnulli.us,gmail.com,microchip.com,linux.dev,nvidia.com,davemloft.net];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:ivecera@redhat.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:robh@kernel.org,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:linux-rdma@vger.kernel.org,m:przemyslaw.kitszel@intel.com,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:jiri@resnulli.us,m:richardcochran@gmail.com,m:saravanak@kernel.org,m:Prathosh.Satish@microchip.com,m:vadim.fedorenko@linux.dev,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:linux-kernel@vger.kernel.org,m:tariqt@nvidia.com,m:aleksander.lobakin@intel.com,m:jonathan.lemon@gmail.com,m:krzk+dt@kernel.org,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,m:conor@kernel.org,m:jonathanlemon@gmail.com,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[29];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.826];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3CCAE79565
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 04:27:21PM +0100, Ivan Vecera wrote:
> On 1/23/26 3:58 PM, Simon Horman wrote:
> > On Wed, Jan 21, 2026 at 09:18:02AM +0100, Ivan Vecera wrote:
> > > On 1/21/26 1:16 AM, Jakub Kicinski wrote:
> > > > This is an AI-generated review of your patch.
> > > > 
> > > > Dunno if there's a reason for having this fixed by a later patch,
> > > > if not let's fix. I'm sending the review mostly because of the
> > > > comments on patch 12.
> > > Will reorder these patches... Maybe it would be better to send patch 9
> > > separately to net as this is the fix for the bug we found during
> > > development of this series.
> > 
> > Hi Ivan,
> > 
> > If it is a but in net, then yes, that sounds like a good idea to me.
> > 
> > Please include a Fixes tag if you take that route.
> > 
> Yes, it was submitted to net with Fixes and recently merged as
> 
> https://git.kernel.org/netdev/net/c/f3ddbaaaaf4d

Thanks, sorry for missing that earlier.
