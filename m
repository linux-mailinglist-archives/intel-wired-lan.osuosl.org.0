Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A3964C1B8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Dec 2022 02:18:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1355B40B42;
	Wed, 14 Dec 2022 01:18:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1355B40B42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670980726;
	bh=RkRObQtEfAalAzR3fioAhhzLET0Moaz+LXruC9nf568=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8WSt7C0XnCHEXsTSsTeyIqfi2uJlOAVqeO0xDw+Y8BQY0R98C1wvRAquQhrgvEblp
	 p6IUgcLG2ZXFIjUFaY1hmwmQo+D3gV6NaRyQFaZfbYhcV3ZdHQgNRB8tlWFwpA1VIg
	 DvJYiIMx8fIq58ZSMClUYGe+Sa0ae31KEcd/2dhv5rzW852EOn7rk0C9DjMnscu3xN
	 1zBFkHR5lJ4TQCCelY/nvJ1YtA1rOJLxRkU8hKcUL4faCfjl5QzM7/DgdZbzLs7gbM
	 UmVmtfaoF7d3BnzJYFVf/0RJ5va9Npy8PQf1vCo5YUvEM3zh1cf2YjfZuPpYL+7rm/
	 L4lzcdkMmvYFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GeK91yOvWiCd; Wed, 14 Dec 2022 01:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2130940159;
	Wed, 14 Dec 2022 01:18:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2130940159
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3067B1BF3CB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 08B5A4180B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:18:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08B5A4180B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXETKjgj_M4B for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Dec 2022 01:18:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D0E9841809
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D0E9841809
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Dec 2022 01:18:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 9B8C06178E;
 Wed, 14 Dec 2022 01:18:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4593EC433EF;
 Wed, 14 Dec 2022 01:18:35 +0000 (UTC)
Date: Tue, 13 Dec 2022 17:18:34 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20221213171834.682641c3@kernel.org>
In-Reply-To: <Y5gdpoif/1zBUKDB@localhost.localdomain>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
 <20221212101505.403a4084@kernel.org>
 <f0078f0a-acbc-a9bd-effd-6d04507e71e2@intel.com>
 <Y5gdpoif/1zBUKDB@localhost.localdomain>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670980716;
 bh=WiALcN65WD76Sc/d2db5t1KHDlgXmLL6qNzHhKRn6P4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=M1u7F7pc4gzZ0Bgxzp+j1mwIcuPel1g8DLwnRXPTRfGIdpXuuSIxBRXZJQgRFb6oX
 ghnK9faYmSgGt+yV53A96EiUr129kWtShaZYpcuFWwckmpgCJiQpnPH+AtyCtqb2JS
 lGCtIHFdTC58e+lMT8xsfnUGI8o20YRrKZBMFpACNYEHKCmWu2JugR+VfUGmVLmaEI
 mRaaRWyGjnf81VF2PXA9/UwtRURFgi6VSs2q6/q1ApVMTOBAGCaEgafG5PPPsdiICZ
 O3mOhoABZWkfVBxKXPxnfhsAnJvzyJclKnBzTIHXjzhtuuIP+EmtwEijLxwGNhNLD2
 EpvteU+6G1bDQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=M1u7F7pc
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 00/10] implement devlink
 reload in ice
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
Cc: mustafa.ismail@intel.com, leon@kernel.org, benjamin.mikailenko@intel.com,
 jesse.brandeburg@intel.com, leszek.kaliszczuk@intel.com,
 netdev@vger.kernel.org, przemyslaw.kitszel@intel.com,
 intel-wired-lan@lists.osuosl.org, shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 13 Dec 2022 07:37:26 +0100 Michal Swiatkowski wrote:
> It was targeted to Tony dev-queue to allow some tests as Jake said.
> Sorry, probably I should point it out in cover letter.

You can tag as intel-next, iwl-next or some such, to avoid confusion.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
