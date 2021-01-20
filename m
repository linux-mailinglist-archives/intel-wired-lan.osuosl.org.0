Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F582FCDC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Jan 2021 11:18:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A87868535F;
	Wed, 20 Jan 2021 10:17:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EF4fgiWzFT58; Wed, 20 Jan 2021 10:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6602985DF5;
	Wed, 20 Jan 2021 10:17:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A26121BF9C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 10:17:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9DAC686FCB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 10:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGF88H02A0X5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Jan 2021 10:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A69098658D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Jan 2021 10:17:54 +0000 (UTC)
IronPort-SDR: JSxl+N38LWdGCk56cq+OX7TH+MwLNm2nKFRddpllweE1KUK6+vD6EuPbCIxhkbLKFBixnN2oXX
 zRbrUuxFu8Lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="166743270"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="166743270"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:17:52 -0800
IronPort-SDR: bxQOgMfMtPlScy2vKCoq4Z+bfDesObqz3wO8M1+q6Gx2eRznYHXXgPCFcfbDKhBLf0OltavLh8
 3nmRy5EFXU+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="467030909"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2021 02:17:52 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 02:17:49 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 02:17:48 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 20 Jan 2021 02:17:48 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 20 Jan 2021 02:17:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWE0iQxWFuLlJ7AUaucNMsUKr23jsk66gjdn6N0jBm908FXDzoC1CL4/Tr9APKueCqheny2wbIwS0hFo2IXY0Ts2kq+BPM6tb67MaV6XdMQTanOaeV1DIlToB7nMyo+9Ipry/we+llGq5erA7hesAapmXNi0RkJNPuiEswFLAPTC+zu2g6yC9CBoVrlOUeYZuFZDEJdxx+EL0BOMyEcJuPi6Wp78rwqZlc4Y5bGVGpaYqftnvHNPmnyCS71Myb30vTyRwJhF0HmPt4/aFDz8JrRUz7J53wHgeFuLk4B7gl+IXIveUBu/5xOM/xF41mXjGgKWGAOXhjJoqJSMYVz2sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICNxCNpFR6HsnbcTaSOYVDeyevZCqLd/kCnRP9dtWgE=;
 b=EI4UeHUelARYJz2h6hOEYqxF2RMfeV9LoYPTj4MVY7Vw0X5iPDDOiUnpggHMc7zK8dOJb5evpnoysZQHcmlEa0reWH8FZETOnDVZPv1K9y0VF2keolUSrDX9pKq2nnN1seN3PgLN3AHZULA0CesolgLdG3M8P1CNSyF7okodg6Gu4Qr0dCaRK76yATIVzU1b2ZFYQP/fe9OnK0QNqG65KnYael/1Xy/gAkpqiJoZd3xvAlQepM/L5ZlUOiCFeUnsDQ09TkvkAybrgpctFkD8Ec/qpvyMhyFYky32Mxu1abSJugE1Dk/idhjLxLz/L1eM/mFqVJbg2dTGlJJGdzOKig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICNxCNpFR6HsnbcTaSOYVDeyevZCqLd/kCnRP9dtWgE=;
 b=nbrlVvg13Amw/2VspoQ1/p5GtWnZTL48maD+CS9swjp5IG2jvjbYk260Vg6fkQwGlXjQBWIAEOAXIjZZc4hOuzp2QVwEinqeazpWAT1bUJfdC7SoGfm/nrpFL8VbwWjmFDxG1dVwps7CNWq/e/VyPiQv20WfoQBm82FwOLapDJM=
Received: from DM6PR11MB2876.namprd11.prod.outlook.com (2603:10b6:5:c1::16) by
 DM6PR11MB3674.namprd11.prod.outlook.com (2603:10b6:5:13d::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3763.14; Wed, 20 Jan 2021 10:17:46 +0000
Received: from DM6PR11MB2876.namprd11.prod.outlook.com
 ([fe80::9504:fbb9:b745:7839]) by DM6PR11MB2876.namprd11.prod.outlook.com
 ([fe80::9504:fbb9:b745:7839%3]) with mapi id 15.20.3784.011; Wed, 20 Jan 2021
 10:17:46 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
Thread-Index: AQHW7dIEhLlCM8302kuz9vsDOm/cgKovu80AgACTFiA=
Date: Wed, 20 Jan 2021 10:17:46 +0000
Message-ID: <DM6PR11MB2876AD6ADFBAB24F8BA8D631E5A29@DM6PR11MB2876.namprd11.prod.outlook.com>
References: <20210118193454.275037-1-arkadiusz.kubalewski@intel.com>
 <20210118193454.275037-2-arkadiusz.kubalewski@intel.com>
 <a1480517830b533099bf5ce90e09a9fd5c00504e.camel@intel.com>
In-Reply-To: <a1480517830b533099bf5ce90e09a9fd5c00504e.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [109.233.88.116]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 78ee5e80-b9ca-412d-b9bf-08d8bd2ca1d9
x-ms-traffictypediagnostic: DM6PR11MB3674:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB367426A704F6E4716CF95F8BE5A20@DM6PR11MB3674.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XKt4TUmZroeK+IcapQcFtUypP+TprzGgcMsnzvonEJa9yDnuB5M6yY5LLlxZYMJhafGqO1bEzXIkfYSTGVZ8fa3L7F6s3ZfCyHP8LvpDGFzQ8qhXAhAkfEl0qf5epChVj90FAOEd7+vYu5TCLc0cy2dSgE0DEJWUYnYJ9H7bklA9eJUmZscOg4JuE+YfBk86hdWby9z2M3fJ5lUv7bAsEx0XEzf/FKpMdYpNwbtry5rz/xrb1FPfQiEsPxYKzb9SPgeaEnC43d0Y3U/bCr541+KsfyWUBzSsdoWmJ9XlpjFDXo+G9/dZ1MZ2TpP2rZyZyy/w5qlC02nD8f1oAL/Jzcokwv4Y8L3dLlXbkBlxlWneIKP+i5BE8bnYF+zCQauCwVO7M1kX8B5SCFXPswELcA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2876.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(76116006)(7696005)(66476007)(4326008)(66446008)(186003)(64756008)(54906003)(9686003)(26005)(6862004)(8936002)(55016002)(86362001)(6506007)(52536014)(478600001)(66556008)(66946007)(8676002)(53546011)(316002)(71200400001)(4744005)(2906002)(6636002)(33656002)(83380400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?bXF5Tkl2WmZQdU55THBHblovVnFMQ2YxdWdxK3JSaE1sbmErWDFub2szckNH?=
 =?utf-8?B?dStJWktSRWc4V214Z1c3cmtkbXZXaHVpaVJyODY5TWJHYVBjbXZ5WlpjNU5n?=
 =?utf-8?B?SE1TUUxRY1piblArVlQ0LzdxWmQ1SklMK0RZUkpBUXBVTGRNNmZaZ2ozS2dF?=
 =?utf-8?B?TjlmVkFxdGhsUGcvTkFTRit0VTV6c2VPd1IxU3h1L1QyVlhBWnk1eHFTd1Z6?=
 =?utf-8?B?OWJNWVdkMm1mYnBRb01CejVZZVhTZGdqWks0YnlzODJ2TDd0QmVEZ1FpcldX?=
 =?utf-8?B?aWNTV1dVZEl5OFhTRFdpR29uYUxUU1VLUDR4Tm5vbnR2TW1NbjNEY1lVWVp1?=
 =?utf-8?B?NWhnS3o5OERSeXBWSDY3M0s2ZEQwaXlOTUJjU1RaS3hvY3ZLVXpDcXJxMXRX?=
 =?utf-8?B?VEM0cEc2YnRyZG90ZHN5Tk9RUk9ianBmaWNJY0doTE1LUFhYY2VrOGVaUEpa?=
 =?utf-8?B?NUljc1NBQklpOVd5eGtxMWVVZE1tTGZpVzAyUEwzSjRxczFzNXRnTGJQRUox?=
 =?utf-8?B?bnlLejhPZklwb2JpOEV3SVc0UjRubkpVcEhXaGNLTFJMT3FXa1RQT1NGYkxk?=
 =?utf-8?B?YXRtSnJ4Q3FBTTNMMHQyQ3pKWU03TTFVRWlyQm1VaWI3b1N2cWdONnpzUHFJ?=
 =?utf-8?B?TDhqNnpiLzBQTXg4SlZLQisyM3JWZnd3MTdHZzg5Y3E4MWt3QldiNnR2eHdl?=
 =?utf-8?B?Q1ZHUmwrZXYrR2hrNzhnSm5SYzBiaXZXSEltRkhVeU95aVB0S0JqKy93Tlor?=
 =?utf-8?B?T3pQa3Bmb2R5U3V0UldDY1hPRUt6WTRnQlptOTk2Q0h2aVFuaW9VRGl0K3pV?=
 =?utf-8?B?a1o4U213MWVmUVgyeDEyS21qNHB3WjdBaHZ1RjB6Y0ZUZ2ZtYWwrLzhYY1pi?=
 =?utf-8?B?OExtcTZoSGwrQ2RjeHZBV0c1Slo2OS9iRmFXUFZzNmJyaklrcW9FZkEwZ3Fp?=
 =?utf-8?B?VWY1YkRlZEU5QmVzTm40K08rMVF1bklTVTJGS1VueitOajhHaUl0UTBPcWJT?=
 =?utf-8?B?SzR5QjRTWnNTSldNczVzUzVMVldBR1Mvb1laYXhGVCs0SDR4ZG9KVFVEcEJU?=
 =?utf-8?B?K0NtTnMyNzRSWGljRTRUWG9Xd0F3UzRiYU5uNDBLdUc5NlpGL2pRa21lenB5?=
 =?utf-8?B?eFE2UGJrWkRGN1RqRStRb0pwUFRkYjh5MCtCdXgrRWtFM2NXYlE3eFI0MnN5?=
 =?utf-8?B?cmtNOTlhQVN5Q0czMWd6Z1hWSFIrR1lvZDhPWlN2ajdPWTJRZ1dYK21zQ1Fj?=
 =?utf-8?B?cjg0MGltOUp4REo4SklFcEJPRnNxMFplSjI4Vmx4bUNUQ09QYWprVExFVmJq?=
 =?utf-8?Q?NOoSqLzj0W0qI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2876.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78ee5e80-b9ca-412d-b9bf-08d8bd2ca1d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 10:17:46.3836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7XX9QFR650zIL0CTiN4TpDNQ0VwHrNsrvVhgVTnGL/8BrYc18241T+2ic9XOgAVqFKkTNFmxazPDUGwySk9vwQCWPqJL/X2a24X+piEgrCI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3674
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't
 report link up for a VF who hasn't enabled queues"
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Good day Anthony

This is the first time we push a revert commit. /*we thought that CL should be enough, and provided standard revert commit message from GIT*/
Can you link us to example of good revert commit message?

Thank you
Alex
ND ITP Linux 40G base driver TL 



-----Original Message-----
From: Nguyen, Anthony L <anthony.l.nguyen@intel.com> 
Sent: Wednesday, January 20, 2021 2:30 AM
To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH net v4 1/2] i40e: Revert "i40e: don't report link up for a VF who hasn't enabled queues"

On Mon, 2021-01-18 at 19:34 +0000, Arkadiusz Kubalewski wrote:
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> 
> This reverts commit 2ad1274fa35ace5c6360762ba48d33b63da2396c

Can you provide more info on why we are reverting? Some of the information from the cover letter would probably be useful here.

> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
