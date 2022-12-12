Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAEF64A6BD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Dec 2022 19:15:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE618410BB;
	Mon, 12 Dec 2022 18:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE618410BB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670868916;
	bh=frHbWfHQjpmD1qo2+hxcnmsL8BTPoRtQflzfx120xc0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Pa35wErddeOtFwQbNW6IHnkTepDWBDtygO9aI3bgMDPNxD4xgtV0FNIibRUWjvCR/
	 B0Fr1OQhFTjSoU+FUswikCvDhVYF+klg6tiHawJWsx1Tgu2ko7Rs8907Ebx0J2M0yH
	 JbkI4mvtFuntMnRgk1E9pOzvalISKki8j/XMtTZpIyw87V7W1qCjtFnKnDOs8ekSkZ
	 dY2TUyUTTW6c5zMFtWVdM+0KY2H+cJwd8QNU/t2+/bq9N1/HbL3RMmdT5zveYVlkUx
	 iVQfbCCkKd4jH/pYbfUdMyrWl/zrF7VKoSV88DON1iC3H/UUD4iuPQZocC1ImNdqxD
	 Uc+SZFlJkXl2A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYSC4VOAehTF; Mon, 12 Dec 2022 18:15:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 664594098F;
	Mon, 12 Dec 2022 18:15:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 664594098F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E50961BF364
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 18:15:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C892260B57
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 18:15:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C892260B57
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0dOq13RJHu7V for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Dec 2022 18:15:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87D3E60B20
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87D3E60B20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Dec 2022 18:15:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 34175611A8;
 Mon, 12 Dec 2022 18:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE13DC433D2;
 Mon, 12 Dec 2022 18:15:06 +0000 (UTC)
Date: Mon, 12 Dec 2022 10:15:05 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20221212101505.403a4084@kernel.org>
In-Reply-To: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
References: <20221212111645.1198680-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1670868907;
 bh=ZEWOxtqLjC/57klM8lry9ShKxUraiw0/ZdctHzAuNgI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Vh9El+t3UryRUw8NwSv0d9H8hqnsYMA2afYyTPTfIkm/iyDaVqGHpKT2G3lzfAUKs
 8lbgVZqzpCyDrzIUNl+jwZHk7Si3E2+nnEAfVfj1jA5eZNq/Po3U+oLrsFAv/SS/jW
 2om+acasi+JjJVtOyrpVxAW/kPAhm9i1ZL0y8niqMqOAI+vicmVxqNSNtITPEJ0wom
 SsMaqM3XKW2O+nHEsI0n7R0R9DTUolYu0a0LYvSUIVLl6f8D9yiuqzYnIBfd5bPpzM
 IbUr0ijF86lVZpRbgzKdnxD73q6PPFWyGYwtgVReNtssNy3jLRfWNwLcoAp8L/xA2M
 hm3Wg89Px2IyQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Vh9El+t3
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

On Mon, 12 Dec 2022 12:16:35 +0100 Michal Swiatkowski wrote:
> This is a part of changes done in patchset [0]. Resource management is
> kind of controversial part, so I split it into two patchsets.
> 
> It is the first one, covering refactor and implement reload API call.
> The refactor will unblock some of the patches needed by SIOV or
> subfunction.
> 
> Most of this patchset is about implementing driver reload mechanism.
> Part of code from probe and rebuild is used to not duplicate code.
> To allow this reuse probe and rebuild path are split into smaller
> functions.
> 
> Patch "ice: split ice_vsi_setup into smaller functions" changes
> boolean variable in function call to integer and adds define
> for it. Instead of having the function called with true/false now it
> can be called with readable defines ICE_VSI_FLAG_INIT or
> ICE_VSI_FLAG_NO_INIT. It was suggested by Jacob Keller and probably this
> mechanism will be implemented across ice driver in follow up patchset.

Does not apply, unfortunately, which makes it easier for me to answer
to the question "should I try to squeeze this into 6.2"..
Hopefully we can get some reviews, but the changes seem uncontroversial.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
