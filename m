Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 437705F09FD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Sep 2022 13:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2FC641C0F;
	Fri, 30 Sep 2022 11:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2FC641C0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664536908;
	bh=5EqeZn8xkL75aAaKWwvGGBw0sWpc5LQJsQKyjs1pX0A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mXNLrgrPoKMu8QyS4tdiZCD6IJMK87eIShnzEAaDYkdTlkvDIb+81FAM/kcOmnM7K
	 F+D55RwSEEwzsvIIIRWTVEhn04uH/Ym8H6Cn0llz/Gir+LLym0zktmbYEdFVO5KEMA
	 Lpxf0BFIaQO65kuoZrKyfbEFjPu5kpddhwZBwvj933AfFauJdeiBrhSkQkaJ1J3rv1
	 XVBil/XMEEMSM3l8RvVUD2FeBSW5xLmzlsQovcDc0imRmSKWkZ7gOI69yN0r3Kyjq+
	 Rfq60GzSgZ75CK6tFQmj9O83uBYw7pshInkRZfLglvRzq9C2wNVCHgwv5x0xfigPeB
	 bM459fOvIxYIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-C-25VBE67V; Fri, 30 Sep 2022 11:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7EB4241C87;
	Fri, 30 Sep 2022 11:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EB4241C87
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96E6D1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 11:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7E811403E9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 11:21:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E811403E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JiU5rcYG7_3S for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Sep 2022 11:21:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9C8D2411A2
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9C8D2411A2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Sep 2022 11:21:40 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-348-_ohALvP0NbCPtgGvJ40x8w-1; Fri, 30 Sep 2022 07:21:36 -0400
X-MC-Unique: _ohALvP0NbCPtgGvJ40x8w-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DC7133C025C1;
 Fri, 30 Sep 2022 11:21:35 +0000 (UTC)
Received: from p1.luc.cera.cz (unknown [10.40.192.232])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 114F0C15BA4;
 Fri, 30 Sep 2022 11:21:34 +0000 (UTC)
Date: Fri, 30 Sep 2022 13:21:33 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20220930132133.4d312070@p1.luc.cera.cz>
In-Reply-To: <79bbcecd-0d6e-f8e1-3895-2dbf2f3903d9@intel.com>
References: <20220913140206.64330-1-kamil.maziarz@intel.com>
 <20220929095307.2c60d651@p1.luc.cera.cz>
 <86313d0b-9d2c-289f-e13e-742cdeb45aa7@intel.com>
 <79bbcecd-0d6e-f8e1-3895-2dbf2f3903d9@intel.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1664536899;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CFfq0x84Nq29r/m0b63uFee49EcO+tOL+3mxrNN1LIQ=;
 b=aapOOE3sb7JaI9/O2hYPYB4S47ea87rszLhOdcg3yruYMxK3gwq/48XEYNcVSchukFLjZF
 p4iyeXdz57lcn45UZXpEcvutggIRSufrA6ymRqhy0wnI3IWkIlpDpPXwLWRPj5SHFe+Cgh
 eHnCjgZtg34cSruuAPYpValt8hynBqA=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=aapOOE3s
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix not setting xps_cpus
 after reset
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
Cc: Michal Jaron <michalx.jaron@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 29 Sep 2022 08:54:39 -0700
Tony Nguyen <anthony.l.nguyen@intel.com> wrote:

> On 9/29/2022 8:47 AM, Tony Nguyen wrote:
> > I'm not sure exactly where you are referring to when you say upstream, 
> > but it is still currently on the IWL trees [1].  
> 
> ...
> 
> > [1] 
> > https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=e312239075d77f11b45c3997a4e89153393c259d  
> 
> Sorry, gave the wrong link/commit. Should be:
> https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git/commit/?h=dev-queue&id=aea4f7bb6c656b852771747538ca264b72967055

Hmm, ok... it is now in next repo... I'm a little bit confused why the patch with Fixes: tag is present in next-queue repo.
This is not a -next material or is it?

Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
