Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F111A1E2FF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:27:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A25268695E;
	Tue, 26 May 2020 20:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ud7lnKRzhvHd; Tue, 26 May 2020 20:27:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C3F686207;
	Tue, 26 May 2020 20:27:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 696E41BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52F8B20115
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lSkdaC9qQQ0r for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 9597C1FF98
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:27:04 +0000 (UTC)
IronPort-SDR: zJjziQ759KdRwZIxGRyxNAYqz4EXFw1wxvooEJv8U+JFFuYKr//qnfy4Ld1kzIbBpq6eum39w9
 z6CgSF37G5Rg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:27:00 -0700
IronPort-SDR: W+lE2Zb3QrzYhcu1hridPkatMBTPJEaQGtR5PCxWhefPN7GSZL5Y6jLb9LObQvmkNjkqSFkHhw
 CF8qn/F0VW4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="255529992"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga007.jf.intel.com with ESMTP; 26 May 2020 13:27:00 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:59 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX162.amr.corp.intel.com (10.22.240.85) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:26:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l91FuDRXoIp68SYGHMBRb9TQ+a5IZkGMxAYY0F8dlp2h+MK/kc7k7LfjD3FEMRXtruO6uATQsCgRaUxOR6L84zJ7k5xLmkNDToIYa9ngE/xKz1IFv2QiyqjrhhACVFj9jWLxGy7kUgWqI++CJsR6/IWhTHMHDOf0OQsoigcVDKe+yAcM5NHDyYk87ZC/8isMhV5aBIY7Swba/fBWNrGNiyRGFoURCgBu3DCsjjxMXbFXEShRMHRBD/qtjc/tTi/eMjZeN/o7fLCc6ZiapFRsAmxZWHk4SMA+nnvjmH5774T8ejC0Ax3Ob719Fz7OQmkOQeo7nVccc6pZ2prC9yiQqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQRLM7JiEfu8Ul/A2lCpTLX+Z8CiHk+33bSDSO1h83o=;
 b=Wq2DkedgSTwaO55PVqJMntuyN0u8Vw5Nim+/+uegjuLmABIA3qaaAvoM1xuHRJ8OFp2cvpSWQQMeLQ3Q9WKeeDwRRSh7bXEDR8Cy2A2+f5sv38Nq1d6wPyQEozN0iGPmHsrS9uJ4GFy2EFYALVgu3QT1JCEOQRVspxwCjSgQ8NA8QO2FUTiwxQihjEPPmKfMYEV6TxFtVSM5P3UkVM/gMrHDyAb3sAcTPr/bCvNMV0zdWFRUAquLK8LKp+shkWJNMAhna7BReTH2hkqxFNqh1xNbODF7VdQxlfaUHKI62QoYbM5JYdZPWIw8zeT0qzqFZoFfiewslFeDWmkY71e1lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQRLM7JiEfu8Ul/A2lCpTLX+Z8CiHk+33bSDSO1h83o=;
 b=L9H32dGKKRaGnhi+4hINVqDXYxTxyPfaHetKlGMbgzSPTFv59XuETHK/+/35ma4ltakc7ChAHmYggZ5GU3oix69t7ux+K4rHAnL1VuLDQ1+2EJ9rH/UJS5NigohI9bO7HR10iJdV0DcIgJnJ93AJjHnXTXVbwFHwN+H3NxtQQWQ=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:26:58 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:26:58 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 14/14] ice: Declare functions static
Thread-Index: AQHWKxtWVQ1CGypedEe1MQ2oSkZ8Vqi64blw
Date: Tue, 26 May 2020 20:26:58 +0000
Message-ID: <DM5PR11MB1659DA6CCFF206343EA5317F8CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-14-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6aa34b6c-0dde-444d-6d45-08d801b323d1
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643EE5796B2EAEF23F828128CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:499;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bu7i61RfCebFAfVQm6Kd2wACBVM/njsFzNpIOTEwAkwAGpsaqCmBfx3fCz72TBy4Pkc9YLFrWQdmKWVckhDMictCqxbrdC8rjbJDMVB8TWDb/IiYOxG9LDUELud/yjKoEby6w26j6YdHBLqb7Qgy0mlfnHlSgVM1W5CQL1IbwslmarVtEu6sPsLJ5KPEw3DgB+sjdG9cv0u0KNxXm9WkxVdwf0H40FxNTMUpXJRgT+Z/2/4NUPgo+dmc3jbXkBz1DhHOUmjCBeko25rpikI4ktRpDg3XW47H1mO/RYwh4GWri6md5/zxvhAYZNDwlanfBW8ueEYy1D0G//LCYzgBjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: UfrUNDEQjSBNJzx2K6J+BW2ac6mr2R4mxaPZgRW715jh552NnJDy6Em4lOIyZAne23UIRV+I9V+Hsp1/lhYMB4J8nJhUmI5B9qDHstAzbV2nzSNq/I4bjPnZgE+R2YkgwbjiJ8dwDJ8uVFTSLpfGdqYc/6lgDUGq6Q9lVbeStdqIwyFpHD4DWDjq9MH2EiAGE7M14VvnKXdULeQsfRRWqUev6sZs080PUCGztz3/U47kgP1pyfB87FEFSqwZJFJHUdePidqCYKCbQVjIqY3tahajLrhtI9vwYt0TYHrFkVjcwsmPHF6lVsS/D5qQiUq3W7PIo9+GANZOu76t2fCVlcBGBvT5H7qFU59xH94dCpT2jNpvUYz6tiEUf2RKeEzofgbgwm5bRHPGg4+LyuX6Sq2dkRXoRQOAeplclr9KVVFhXA5iPILrIB11zfsL5pKkDuJi1mkWy3Lp+tsenQ377usO3sm3xVDK+iFhG6f02GQV/Y1MXbMDdzXt4nBFyYEP
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6aa34b6c-0dde-444d-6d45-08d801b323d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:26:58.3806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJA978ye5pFkQ2XJOndtnFrRdiTU248g7BSucajm6bFrArseV9oNsY2iibj32AcEzu+MUryk8bQNEx8zyK8Un9Wpjo9hrKXCYef/gfwY6xY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 14/14] ice: Declare functions
 static
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 14/14] ice: Declare functions static
> 
> ice_get_pfa_module_tlv() and ice_read_sr_word() are not being called
> outside of their file. Declare them as static.
> 
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_nvm.c | 5 +++--
> drivers/net/ethernet/intel/ice/ice_nvm.h | 4 ----
>  2 files changed, 3 insertions(+), 6 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
