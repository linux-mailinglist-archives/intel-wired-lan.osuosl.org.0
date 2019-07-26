Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71349773C3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2019 23:54:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24F4588BC0;
	Fri, 26 Jul 2019 21:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WGENzmN-K-yF; Fri, 26 Jul 2019 21:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 744F58824D;
	Fri, 26 Jul 2019 21:53:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5480C1BF361
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F3FE88227
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:53:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sPKyO5EU0UcS for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2019 21:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BC69A87D80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2019 21:53:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jul 2019 14:53:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,312,1559545200"; d="scan'208";a="322174201"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2019 14:53:55 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jul 2019 14:53:54 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.30]) by
 ORSMSX121.amr.corp.intel.com ([169.254.10.173]) with mapi id 14.03.0439.000;
 Fri, 26 Jul 2019 14:53:54 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next PATCH S8 11/12] i40e: Persistent lldp
 support
Thread-Index: AQHVQYOtwdcpIBeztEeX6naFA/a+ZKbddiLw
Date: Fri, 26 Jul 2019 21:53:53 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40CEF8@ORSMSX104.amr.corp.intel.com>
References: <20190723100144.57435-1-alice.michael@intel.com>
 <20190723100144.57435-11-alice.michael@intel.com>
In-Reply-To: <20190723100144.57435-11-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTY1NDZkZGMtN2ZlMC00MDZlLTkwNjgtNDYxN2RjNzNhMTlkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiVWFhRmVsZmQ2UnFxREZDNUNkQVVoOCthVkxCQWcrM2Y2SFdlcU5DTXBJRzVCYUVmVlpQaVlhYTJcL0Eyd2J1STEifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S8 11/12] i40e: Persistent lldp
 support
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
> Behalf Of Alice Michael
> Sent: Tuesday, July 23, 2019 3:02 AM
> To: Michael, Alice <alice.michael@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Wnuczko, Sylwia <sylwia.wnuczko@intel.com>
> Subject: [Intel-wired-lan] [next PATCH S8 11/12] i40e: Persistent lldp support
> 
> From: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
> 
> This patch adds a function to read nvm module data and uses it to read
> current lldp agent configuration from nvm api version 1.8.
> 
> Title: i40e-shared: Persistent lldp support
> Change-type: FeatureImplementation
> 
> Signed-off-by: Sylwia Wnuczko <sylwia.wnuczko@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_dcb.c    |  18 +++-
>  drivers/net/ethernet/intel/i40e/i40e_dcb.h    |   2 +
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    | 101 ++++++++++++++++++
>  .../net/ethernet/intel/i40e/i40e_prototype.h  |   6 ++
>  drivers/net/ethernet/intel/i40e/i40e_type.h   |   1 +
>  5 files changed, 127 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
