Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17147C9F2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Jul 2019 19:08:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D90A87DAA;
	Wed, 31 Jul 2019 17:08:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMK7UhhXo5pB; Wed, 31 Jul 2019 17:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6650F87D94;
	Wed, 31 Jul 2019 17:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C63831BF23F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C286E86132
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uyjUKG4ACXBf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2019 17:08:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23B9685D26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2019 17:08:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 10:08:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="371593466"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2019 10:08:18 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 31 Jul 2019 10:08:18 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.237]) with mapi id 14.03.0439.000;
 Wed, 31 Jul 2019 10:08:17 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S24 v2 02/12] ice: Account for all
 states of FW DCBx and LLDP
Thread-Index: AQHVRjO8hNXBn3P/7U+ettgzR0ryeKbk+KHw
Date: Wed, 31 Jul 2019 17:08:18 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40E85B@ORSMSX104.amr.corp.intel.com>
References: <20190729090454.5501-1-anthony.l.nguyen@intel.com>
 <20190729090454.5501-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20190729090454.5501-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTY4ZDJmOWItMDdjMC00ODMxLWE5YzUtODQwYmM5NjY5ZDNiIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia0xXbzM5VU5KRTZuZUd0Sm9rcHlscEpCc1hBeCtldUpWb0dNOXJpT3lmMGUzK3Q5MUU4eUxzUktIUzBrQXZqTyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH S24 v2 02/12] ice: Account for all
 states of FW DCBx and LLDP
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
> Behalf Of Tony Nguyen
> Sent: Monday, July 29, 2019 2:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S24 v2 02/12] ice: Account for all states of
> FW DCBx and LLDP
> 
> From: Dave Ertman <david.m.ertman@intel.com>
> 
> Currently, only the DCBx status is taken into account to determine if FW LLDP
> is possible.  But there are NVM version coming out with DCBx enabled, and
> FW LLDP disabled.  This is causing errors where the driver sees that DCBx is
> not disabled, and then tries to register for LLDP MIB change events, and fails.
> 
> Change the logic to detect both DCBx and LLDP states in the FW engine.
> 
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 34 +++++++-------------
>  1 file changed, 12 insertions(+), 22 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
