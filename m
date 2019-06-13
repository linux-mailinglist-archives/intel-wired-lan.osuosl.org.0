Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B35B444E6F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jun 2019 23:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D8BDD877AD;
	Thu, 13 Jun 2019 21:27:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fei6YV63oxDU; Thu, 13 Jun 2019 21:27:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA54B877F5;
	Thu, 13 Jun 2019 21:27:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C1DD1BF844
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25DE8877B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pRr9VHkvXWRX for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jun 2019 21:27:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7F1F2877A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jun 2019 21:27:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 14:27:09 -0700
X-ExtLoop1: 1
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga006.fm.intel.com with ESMTP; 13 Jun 2019 14:27:09 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 13 Jun 2019 14:27:08 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.84]) by
 ORSMSX154.amr.corp.intel.com ([169.254.11.84]) with mapi id 14.03.0415.000;
 Thu, 13 Jun 2019 14:27:08 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] ixgbe: Check DDM existence in
 transceiver before access
Thread-Index: AQHVEZt++QiDkKXRrEWrqwE+aM1aiqaaOiXw
Date: Thu, 13 Jun 2019 21:27:07 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D3ED67D@ORSMSX104.amr.corp.intel.com>
References: <20190523191112.14572-1-maurosr@linux.vnet.ibm.com>
In-Reply-To: <20190523191112.14572-1-maurosr@linux.vnet.ibm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOTk1MTEyOWMtNjdmYi00NGQ2LTk4ZWQtNzZkMzE4M2U5ZGVlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaGhlaFlmR25Fcll3MEF4OUdsdU9VUHk0R0FZOHl2SU9xUVQrMWI5dHNva0k3Q2RkT2NiWkdMbm1raUxJUHRPWiJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Check DDM existence in
 transceiver before access
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
> Behalf Of Mauro S. M. Rodrigues
> Sent: Thursday, May 23, 2019 12:11 PM
> To: intel-wired-lan@lists.osuosl.org; Kirsher, Jeffrey T
> <jeffrey.t.kirsher@intel.com>
> Cc: gromero@linux.vnet.ibm.com
> Subject: [Intel-wired-lan] [PATCH] ixgbe: Check DDM existence in transceiver
> before access
> 
> Some transceivers may comply with SFF-8472 but not implement the Digital
> Diagnostic Monitoring (DDM) interface described in it. The existence of such
> area is specified by bit 6 of byte 92, set to 1 if implemented.
> 
> Currently, due to not checking this bit ixgbe fails trying to read sfp module's
> eeprom with the follow message:
> 
> ethtool -m enP51p1s0f0
> Cannot get Module EEPROM data: Input/output error
> 
> Because it fails to read the additional 256 bytes in which it was assumed to
> exist the DDM data.
> 
> This issue was noticed using a Mellanox Passive DAC PN 01FT738. The
> eeprom data was confirmed by Mellanox as correct and present in other
> Passive DACs in from other manufacturers.
> 
> Signed-off-by: Mauro S. M. Rodrigues <maurosr@linux.vnet.ibm.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 3 ++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.h     | 1 +
>  2 files changed, 3 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
