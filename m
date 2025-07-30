Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C91D6B16306
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 16:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51FD540F81;
	Wed, 30 Jul 2025 14:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zUwARTJrKEDf; Wed, 30 Jul 2025 14:44:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F8EC40F84
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753886655;
	bh=cvN8mEGPkady70QoDRSIX2Hq2RYfT+nKZ0b2WmH1tX4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4FMUzKLE2+8ARJC7rhr8GleaXUWA3hxdYj4k4FuhzGQdKDrfQLE5jQZqrLKj1u22C
	 D20XTo4U1wbs3mPb9zXCU34IGz476TR9WQk9wpqR7iVy5MpEIX9gYVCMSQtInR//BU
	 33VMy1IsuLb05sjb2nmbZbl1/2IN1Qy9Lb/FJ1Jd/UszSC10/gQGM7lB7DZNlUDtLS
	 2vNeU783MtntzhtW5uLXm6hIRI8Mjn4d8N8Jo1KPfNPhrIsDCuRbzjkiIJVcWTKt7C
	 MYctN/Bw8MBuUKwXuEhfvPhHYS6IjMwlJ8CdmnOp7crFadJrp+2GqncuEtu71xxkLM
	 kUeOHXLPnrq9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F8EC40F84;
	Wed, 30 Jul 2025 14:44:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 22D32186
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:44:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1410E40D03
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 14:44:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lPUoNhGIEqnu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 14:44:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 315AD4026F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 315AD4026F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 315AD4026F
 for <intel-wired-lan@osuosl.org>; Wed, 30 Jul 2025 14:44:10 +0000 (UTC)
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-646-3QJacQhlMO2gvU94j6W5bg-1; Wed,
 30 Jul 2025 10:43:53 -0400
X-MC-Unique: 3QJacQhlMO2gvU94j6W5bg-1
X-Mimecast-MFC-AGG-ID: 3QJacQhlMO2gvU94j6W5bg_1753886632
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 19A3D19560B0
 for <intel-wired-lan@osuosl.org>; Wed, 30 Jul 2025 14:43:52 +0000 (UTC)
Received: from [10.45.226.74] (unknown [10.45.226.74])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 91005195419A
 for <intel-wired-lan@osuosl.org>; Wed, 30 Jul 2025 14:43:51 +0000 (UTC)
Message-ID: <25757b67-f0b9-410d-9d33-e0a58d89188b@redhat.com>
Date: Wed, 30 Jul 2025 16:43:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@osuosl.org
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
 <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
From: Ivan Vecera <ivecera@redhat.com>
In-Reply-To: <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Diuq41NAjV9p9-dAA2XY9TV5t_duVDodMg5VHlB_QZc_1753886632
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1753886649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cvN8mEGPkady70QoDRSIX2Hq2RYfT+nKZ0b2WmH1tX4=;
 b=AbJi4tiJdUGI5iXyfX2pIW7Wx3nGnSxZQDZaw7d6sdclyp1qjMTGOmOF+dO3uMPXTjOu0v
 qiofumryuHAmiROEzFX/M5pSOXjgLrNmpzqFH7O1q4fsQRbGuNwoZ4xV798NmTvTOhCrau
 USvBCr2GN4Qb8aHEJJ3UCSLiVer/tzI=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=AbJi4tiJ
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

On 30. 07. 25 2:26 odp., Jiri Pirko wrote:
> Tue, Jul 29, 2025 at 12:45:28PM +0200, arkadiusz.kubalewski@intel.com wrote:
> 
> [...]
> 
>> User interface:
>> - Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
>> - Write "1" to switch to that clock source
> 
> I wonder, if someone invented a time machine and sent me back to 2005...

+1
why do we have netlink based interfaces for configuration...

Wouldn't be better to implement such thing to be configurable via ip
link or ethtool??

E.g.
ip link set eth0 tx-clk <clock_name>

--or--
ethtool --set-tx-clk/--show-tx-clk eth0 <clock_name>

Ivan

