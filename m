Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1968F10A4B1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Nov 2019 20:44:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CF09785FCB;
	Tue, 26 Nov 2019 19:44:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3T_nPeB41RF; Tue, 26 Nov 2019 19:44:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0BD7860B2;
	Tue, 26 Nov 2019 19:44:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C15E1BF346
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 581D686EAC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cyj6zwgkLOUQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Nov 2019 19:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6AC986DF3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Nov 2019 19:44:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,246,1571727600"; d="scan'208";a="359265410"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga004.jf.intel.com with ESMTP; 26 Nov 2019 11:44:29 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 Nov 2019 11:44:29 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 Nov 2019 11:44:29 -0800
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82]) by
 fmsmsx602.amr.corp.intel.com ([10.18.126.82]) with mapi id 15.01.1713.004;
 Tue, 26 Nov 2019 11:44:29 -0800
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "'intel-wired-lan@lists.osuosl.org'" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: virtual-bus[v4]: Implementation of Virtual Bus
Thread-Index: AdWejsx8GQqdDhAwRmONv45220IUFgGAxC9w
Date: Tue, 26 Nov 2019 19:44:29 +0000
Message-ID: <0362d5f99b4948409239baf1571b2655@intel.com>
References: <2B0E3F215D1AB84DA946C8BEE234CCC97B3014A3@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <2B0E3F215D1AB84DA946C8BEE234CCC97B3014A3@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDA4YjI0YjEtZmRmMC00ZTUxLWFkNDktYmM1NjQ2MTFjNmRjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMkEwZjBPUFV3NXhPcG1aN1BCTzZhTEhPQitXMnhoN2IxK2M2a05weE8yeEZFUUtSamxEaERWM1NrVlwvQ2dRMWIifQ==
dlp-reaction: no-action
dlp-version: 11.0.400.15
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] virtual-bus[v4]: Implementation of Virtual Bus
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
> Sent: Monday, November 18, 2019 8:07 PM
> To: 'intel-wired-lan@lists.osuosl.org' <intel-wired-lan@lists.osuosl.org>;
> Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Patil, Kiran
> <kiran.patil@intel.com>
> Subject: [Intel-wired-lan] virtual-bus[v4]: Implementation of Virtual Bus
> 
> virtual-bus[v4]: Implementation of Virtual Bus
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> This is the initial implementation of the virtual bus, virtbus_device and
> virtbus_driver.  The virtual bus is a software based bus intended to support
> registering virtbus_devices and virtbus_drivers and provide matching
> between them and probing of the registered drivers.
> 
> The primary purpose of the virtual bus is to provide matching services to
> allow the use of a container_of to get access to a piece of desired data.  This
> will allow two separate kernel objects to match up and start communication.
> 
> The bus will support probe/remove shutdown and suspend/resume
> callbacks.
> 
> Kconfig and Makefile alterations are included
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> ---
>  .../selftests/virtual_bus/virtual_bus_dev/Makefile |    7 +
>  .../virtual_bus/virtual_bus_dev/virtual_bus_dev.c  |   60 ++++++++++
>  .../selftests/virtual_bus/virtual_bus_drv/Makefile |    7 +
>  .../virtual_bus/virtual_bus_drv/virtual_bus_drv.c  |  115
> ++++++++++++++++++++
>  4 files changed, 189 insertions(+)
>  create mode 100644
> tools/testing/selftests/virtual_bus/virtual_bus_dev/Makefile
>  create mode 100644
> tools/testing/selftests/virtual_bus/virtual_bus_dev/virtual_bus_dev.c
>  create mode 100644
> tools/testing/selftests/virtual_bus/virtual_bus_drv/Makefile
>  create mode 100644
> tools/testing/selftests/virtual_bus/virtual_bus_drv/virtual_bus_drv.c

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
