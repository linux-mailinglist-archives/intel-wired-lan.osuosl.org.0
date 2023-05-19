Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1338709F01
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 May 2023 20:23:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 384274267C;
	Fri, 19 May 2023 18:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 384274267C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684520582;
	bh=4p/oniXfYSL08ILylR2bZuwGWKcxuCPQ62ErpKvWJZY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aE5U962iJPsJJ66SvjAil+3LnIokMr7pfyiBrJ6I4AMpE4FL6v9vkc9hT/PRnSXli
	 WW8CHmUv5anY69bq/T4zS6Gp3dj+aOdAw65OvVvh2NEaRLPnWAhfzuS8Es38uh4qut
	 hgC4uTvey1Eecsc3AVjPUbmwPXPo4MEydlmDuQNoWRkkg7ebGw5ELP+tbUf4BS2rU3
	 +DgdPnPkWb45VS5UpZKSWuZflWghMPSw+3fihDzdLJKsXb4opxti+bIw6EAaVUEORQ
	 YZ0+6iDxu81Berh8lMqEOLVJFJK+mFVtU6XKb8XmgdJj3Ha20CmP4uyKBrP9oTn24Y
	 NepPmXnEQORGQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fTu1bs6-d1ik; Fri, 19 May 2023 18:23:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EA4DA4177F;
	Fri, 19 May 2023 18:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EA4DA4177F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9687F1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6FA9B40606
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6FA9B40606
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MMEx0nUYkC_P for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 18:22:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5557F4059F
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5557F4059F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 18:22:54 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1q04kY-00DMBK-Md; Fri, 19 May 2023 20:22:46 +0200
Date: Fri, 19 May 2023 20:22:46 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <52826c35-eba1-40fb-bfa9-23a87400bfa4@lunn.ch>
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <20230519013710-mutt-send-email-mst@kernel.org>
 <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bb44cf67-3b8c-7cc2-b48e-438cc9af5fdb@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=p6eMyHl40A9wkS/MjAuqAE295bzfPP7wzjNQDjplvVg=; b=P29sJjNY4/xfDFo0ylTgw2x74l
 gae+uMVafOKesWgnHEriiMEb3iGnXMq9i1GOEvT+LX+f8pKSnwkbGJDi6shKqjo9vCUjLI9EEVU+I
 k/73BHQEYRKd3lQ9PTPoV4OIjEiWq4QTHb6hr65eR9r5DE4vGV0PSfXJdWs4J4pvqesg=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=P29sJjNY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, simon.horman@corigine.com,
 jesse.brandeburg@intel.com, edumazet@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, anthony.l.nguyen@intel.com,
 "Orr, Michael" <michael.orr@intel.com>, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> +config IDPF
> +	tristate "Intel(R) Infrastructure Data Path Function Support"
> +	depends on PCI_MSI
> +	select DIMLIB
> +	help
> +	  This driver supports Intel(R) Infrastructure Processing Unit (IPU)
> +	  devices.
> 
> It can be updated with Intel references removed when the spec becomes
> standard and meets the community requirements.

Is IPU Intels name for the hardware which implements DPF? I assume
when 'Intel' is dropped, IPU would also be dropped? Which leaves the
help empty.

And i assume when it is no longer tied to Intel, the Kconfig entry
will move somewhere else, because at the moment, it appears to appear
under Intel, when it probably should be at a higher level, maybe
'Network device support'? And will the code maybe move to net/idpf?

<tongue in cheek>
Maybe put it into driver/staging/idpf for the moment?
</tongue in cheek>

	 Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
