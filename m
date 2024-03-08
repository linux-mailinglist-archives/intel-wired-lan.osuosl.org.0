Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A929A876A75
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 19:06:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C94B41899;
	Fri,  8 Mar 2024 18:06:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TPjuLZ9YaF8n; Fri,  8 Mar 2024 18:06:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 731034184C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709921199;
	bh=pq2aXYSk1BlYlU+KomwI3ErDtIfTFSvrKOyOeKPTG0Q=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xC46YSbY/jxsWcl/rwk8FlBGZBqTGqkcyPpe1Yl+d/2vRyk54rAvWHJ3gTwz1TA1m
	 K97aDOhM5ah6OKUOWl0UsX/39A+Q45OY2u60nbrm4HAjp0x8QMxVBFFNcfOaMprfUH
	 G9t7AR1R+51+xRbzT4FRu5kZ+1kDHaeQx6WzZvrp1KlEYqETWYsgCdWOUkFzcU8j2N
	 Yw2zMta/m8BXpHqh+cg238rj7DP0a8lbVIGi9en0HelfLSy/cQm4WroDcGD30fVBl9
	 r0vFx/Knd+BQ/w+A7Jjmu+6k8KU9FxY01GP0Fffx1ibHs70A7STL6Uz9IlEK5C5xm/
	 Ap4r9dcyrg2hQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 731034184C;
	Fri,  8 Mar 2024 18:06:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8EADE1BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:06:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87B9E40533
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:06:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkZm4kWIgK-z for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 18:06:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFE0C40194
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFE0C40194
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFE0C40194
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 18:06:36 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id ED89FCE2942;
 Fri,  8 Mar 2024 18:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E57CAC433C7;
 Fri,  8 Mar 2024 18:06:30 +0000 (UTC)
Date: Fri, 8 Mar 2024 10:06:30 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Message-ID: <20240308100630.456498c4@kernel.org>
In-Reply-To: <202403090150.0gkUdeIc-lkp@intel.com>
References: <202403090150.0gkUdeIc-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709921191;
 bh=HklvlbNKtDuuq0UHInjzv9d8PAGVxsP5M7610l7WjtM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LaUcJNRqYZ8ehDyXZCKHO7t7FjB+ttYBAMhOBNmBoCvASW1on8Y2LcwPUCK7ATKi1
 IG64z/TO4HwuNk/rK9TA+FRYF0LHBEUUEqrjR/E1qI3/WOA4msT4R5KqoAPBnk5kSw
 7KLDoN9XxfY3QvHZ+3Hvv7mEJC2Z/IOvkBWFKOMxmubmZdTaXR5K15TsQ9wpW2OecO
 oOaxmCxu1/leXyavEUw7/OY6mHCaavQysxAQY43OenCQW6I6I4+5vMDN+w4NPF3kNd
 IkZyU74NlR0w4D5KXgzkt5pEoEHOv3zwbShqHr1phxKZkYhEFBzBehYXDR8yCsvIj8
 ELtcN8aDucUAg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LaUcJNRq
Subject: Re: [Intel-wired-lan] [linux-next:master] BUILD REGRESSION
 8ffc8b1bbd505e27e2c8439d326b6059c906c9dd
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
Cc: netdev@vger.kernel.org, Linux Memory Management List <linux-mm@kvack.org>,
 intel-wired-lan@lists.osuosl.org, linux-mtd@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-omap@vger.kernel.org,
 bpf@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, 09 Mar 2024 01:52:56 +0800 kernel test robot wrote:
> |-- i386-randconfig-141-20240308
> |   `-- drivers-net-ethernet-intel-i40e-i40e_main.c-i40e_veb_release()-error:uninitialized-symbol-vsi-.

Hi Tony!

Is this one on your radar? I suspect netdev@ gets CCed on the reports
because of it.
