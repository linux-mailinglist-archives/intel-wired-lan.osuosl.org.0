Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E63706E260C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 16:46:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 020D9843DF;
	Fri, 14 Apr 2023 14:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 020D9843DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681483607;
	bh=Lcis7QFE6D6tZR8evZvyXu0KwwxL1ytNROgSkYr+F+A=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6U3OMGhg7f5ZWVE8CWL8tgiaUz2LlOK/aaKD+JHRceY2HXZOmEEWcSYyyHzABIVTP
	 qks4bsIfikC/VGsZjPDzE6oBROXxjpYvBgGyQ9Wlp1iawCrPiufGvXI7ixaXNX/9gs
	 M2Son8DXLx43MYvWlgnizwXiGRtrMehzmA7y5353jqw/BT8JgAata9aZGpGd53ETeF
	 KScc+XX1G84xwIAJm8mr4FM1nqEsxjbzG4zapI1GNMDOz7dilnY1lS4o6rknweJsfd
	 WYOCYUtYX+fpilPoYvYvKfWXJE7L0nH9jWU0XfCCZD+xPwkmbuD/ZOGYSyD7sYhLg2
	 Be8/jjn2pUjMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iAliL437nFRo; Fri, 14 Apr 2023 14:46:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03C65843E1;
	Fri, 14 Apr 2023 14:46:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03C65843E1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C12F1C3D5E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:46:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F2D94289E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3F2D94289E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P-CHtAossm0Y for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 14:46:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DAAB42725
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DAAB42725
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 14:46:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 687826385D;
 Fri, 14 Apr 2023 14:46:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51104C433D2;
 Fri, 14 Apr 2023 14:46:38 +0000 (UTC)
Date: Fri, 14 Apr 2023 07:46:37 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <20230414074637.561010cc@kernel.org>
In-Reply-To: <DM6PR11MB4657EF2201A5E110697C9E129B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412133811.2518336-1-arkadiusz.kubalewski@intel.com>
 <20230412203500.36fb7c36@kernel.org>
 <DM6PR11MB46577E14FE17ADA6D1E74E789B989@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230413080405.30bbe3bd@kernel.org>
 <DM6PR11MB4657EF2201A5E110697C9E129B999@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1681483598;
 bh=P29LENUU8RtK91AEGjjBHIhqRST6T4oensoXgJ9R+eI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GxVOkbUuJn6IAnbgJHXTbkppvlx207XD0Z2rQIWbSjeOATpbxl2iysVbWsWE3pGvj
 UUMMq7fikCUxNy4s8Wf+N7t/Y2chjdIvw35vgxFRyGlAgszsNKR93mA3uyJdd0j+H/
 t0/EqGUUCijQqrBE63NDun+NlGJ4ommyZhUz4qExltiCs2I8vJp6wdFcCo3FutkunD
 4bVf1yppAMNrcmi+R2qab2BROR1xNz1KAvDquRKeDyP5ZZdBTYQ24b2Mb98ok5EEwB
 P9qBrx3jc5xFD03gfGwUw6XhWbW8+YJKm+tKU0fM31SGjHKVvAsTLLihF9JA/gwhiq
 Hd1oGyDA0z1oQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=GxVOkbUu
Subject: Re: [Intel-wired-lan] [RFC PATCH v1] ice: add CGU info to devlink
 info callback
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "corbet@lwn.net" <corbet@lwn.net>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCAxNCBBcHIgMjAyMyAxMDowNDowNSArMDAwMCBLdWJhbGV3c2tpLCBBcmthZGl1c3og
d3JvdGU6Cj4gQWx0aG91Z2ggSSBkb3VibGUgY2hlY2tlZCwgYW5kIGl0IHNlZW1zIEkgd2Fzbid0
IGNsZWFyIG9uIHByZXZpb3VzIGV4cGxhbmF0aW9uLgo+IE9uY2UgRlcgdXBkYXRlIGlzIHBvc3Np
YmxlIHdpdGggSW50ZWwncyBudm11cGRhdGUgdG9vbHMsIHRoZSBkZXZsaW5rIEZXIHVwZGF0ZQo+
IGFsc28gZ29pbmcgdG8gdXBkYXRlIENHVSBmaXJtd2FyZSAocGFydCBvZiBudm0tZmxhc2ggcmVn
aW9uKSwgc28gYWZ0ZXIgYWxsIHRoaXMKPiBzZWVtcyBhIHJpZ2h0IHBsYWNlIGZvciB0aGlzIGlu
Zm8uCgrwn5GN77iPCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
