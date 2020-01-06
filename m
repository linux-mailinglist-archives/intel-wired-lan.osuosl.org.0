Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C366A131921
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2020 21:17:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5034486469;
	Mon,  6 Jan 2020 20:17:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9NNPfuCif419; Mon,  6 Jan 2020 20:17:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 88A3886472;
	Mon,  6 Jan 2020 20:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 584C81BF378
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 20:17:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53B1B86D41
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 20:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0P0iSrbQBZa4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2020 20:17:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A12B486B58
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2020 20:17:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 12:17:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,403,1571727600"; d="scan'208";a="232934741"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga002.jf.intel.com with ESMTP; 06 Jan 2020 12:17:18 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 6 Jan 2020 12:17:18 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 6 Jan 2020 12:17:17 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Mon, 6 Jan 2020 12:17:17 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "'intel-wired-lan@lists.osuosl.org'" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: virtual-bus[v5]: Implementation of Virtual Bus
Thread-Index: AdW2ywQY+pzzyfjGRtyb53ICRucqNQOAzWUA
Date: Mon, 6 Jan 2020 20:17:17 +0000
Message-ID: <8c819821ba07416a95189db2c57e8648@intel.com>
References: <2B0E3F215D1AB84DA946C8BEE234CCC97B33B5D6@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <2B0E3F215D1AB84DA946C8BEE234CCC97B33B5D6@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzIzY2RlMDItMjRkNy00MTljLTlhODgtNjJmOTMzOTZiN2FlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiamJtK01MVGljeWFsTjlaOWllY1wvcDFhYkx0YXF5cUZZSktXamJCc2p0eWNhaUNzZzJpS3FqakE0TWV5a3UwdXEifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] virtual-bus[v5]: Implementation of Virtual Bus
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Ertman, David M
> Sent: Thursday, December 19, 2019 4:19 PM
> To: 'intel-wired-lan@lists.osuosl.org' <intel-wired-lan@lists.osuosl.org>; Patil,
> Kiran <kiran.patil@intel.com>; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Subject: [Intel-wired-lan] virtual-bus[v5]: Implementation of Virtual Bus
> 
> virtual-bus[v5]: Implementation of Virtual Bus
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> This is the initial implementation of the Virtual Bus, virtbus_device and
> virtbus_driver.  The virtual bus is a software based bus intended to support
> registering virtbus_devices and virtbus_drivers and provide matching
> between them and probing of the registered drivers.
> 
> The bus will support probe/remove shutdown and suspend/resume
> callbacks.
> 
> Kconfig and Makefile alterations are included
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
>  Documentation/driver-api/virtual_bus.rst |   59 +++++++
>  drivers/bus/Kconfig                      |   11 +
>  drivers/bus/Makefile                     |    1
>  drivers/bus/virtual_bus.c                |  267
> ++++++++++++++++++++++++++++++
>  include/linux/mod_devicetable.h          |    8 +
>  include/linux/virtual_bus.h              |   57 ++++++
>  scripts/mod/devicetable-offsets.c        |    3
>  scripts/mod/file2alias.c                 |    8 +
>  8 files changed, 414 insertions(+)
>  create mode 100644 Documentation/driver-api/virtual_bus.rst
>  create mode 100644 drivers/bus/virtual_bus.c  create mode 100644
> include/linux/virtual_bus.h

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
