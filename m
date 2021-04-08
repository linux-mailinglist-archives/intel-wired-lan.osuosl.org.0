Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 893F7358FCC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Apr 2021 00:26:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 25E9A419E5;
	Thu,  8 Apr 2021 22:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1NrYaiW6Plkx; Thu,  8 Apr 2021 22:26:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6E0D419DD;
	Thu,  8 Apr 2021 22:26:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E069D1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:26:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE0E0419DD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GgxE3Gu5C2dI for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Apr 2021 22:26:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DB565419D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Apr 2021 22:26:51 +0000 (UTC)
IronPort-SDR: +Lk4usPqnR3jq5v9BwIyKVL2+uokFay6lXrb6ENzfwTIWZlaC+7CuWnrZnomvf/uUCXmMmR1wI
 3fdv8pftwRUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="180772670"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="180772670"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 15:26:50 -0700
IronPort-SDR: kxqJ5eGIgMz9IK1U7tEopp2WL7LiYkgWTZf/djo3A/bxZwbD4elFnpq4W0m/JJrF6FTXe86aFU
 Ny+n922prWMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="613508740"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 08 Apr 2021 15:26:50 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 8 Apr 2021 15:26:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 8 Apr 2021 15:26:50 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 8 Apr 2021 15:26:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTvFARNtX+UqhkYd4uhX9CEiz/UHIOGy5OCjfHkP7D6sTtzZJ1/BrxQ53GBbTfJhlIFOedVzFDhduaHUiEQcTC2oTfEoTqR04+RfEAhzCefeE4B0n2ewyq7FCbU+Qib8FLr9JuXJwWV/OieL5Sc6rrjrmFkoENoC2N2NgMudETAUyZmJqzkehsVpzZP3FANhMuvrhgWK2Bs6h6WmcmZmhcV6U/QE7fUlzLZWhT+bqUBxwWgkujl8Vicy+TnarM1HAzaUUo3Jc/Kgcaxvtdn7LlHdOPE/cyrBtVCjr67Hlvy9B0yMK/S1MkJFBpmQgMXkiuZX131ELg0LlrG1DGO/wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Te1cE2QrlbQ3D41K7TunFt1kcLtsI8iHvW8hfuHORRg=;
 b=aQI9dTbNIaUrQccjhMqMjg5lbt1jIVuQ33zAJIXtO5splc50V8x1mpswYGVOwIPUKL3T5IacOuamkaut59Bw7VwIQwiJmhWeSUUH1nVCeIHLI0+fZN1Bm2qtnVRpw4HIZ44DBwERvzCdDpVNrt77tx+Tx1+nKUq1Nx9iMEEKD9Eoj8Cb/JuHkTKxfVHhQ7ZJ9nZ1RzQrSsetBpnzBUQEQn7WDvrYrOaVvjuY7RvITBBXcfsMtpv/ZqNo3J0I4kprLIPI6Two5rdhqucclr2T2KTA1zYJnkPojysEYfTRjmhtltTbTjekZBrs1D098EVrZf+cJP4jVtaxWfrU98pN/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Te1cE2QrlbQ3D41K7TunFt1kcLtsI8iHvW8hfuHORRg=;
 b=BhJJDu/kdE9y0PtnhJUEzHGpJoWsZY4jqrO6ALFmxyDvj97gLvqUSz8xUSOgE0lhcL0fPJyb0xoPmfRF0oT9PGymRFZvqG+9DWBShexmQxEuHyo/16dvRCOgu3bcj4bTxQgXSXJLQUQ83ZzQej2/GGd2Yn4K1aq0J6/tAEiUBrU=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1728.namprd11.prod.outlook.com (2603:10b6:300:2b::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Thu, 8 Apr
 2021 22:26:37 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.4020.016; Thu, 8 Apr 2021
 22:26:37 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S58 10/13] ice: suppress false cppcheck
 issues
Thread-Index: AQHXJnStEqDX+pUio0+nddyf88lKCKqrP2qg
Date: Thu, 8 Apr 2021 22:26:37 +0000
Message-ID: <CO1PR11MB51051EA5D370F1C8E30BE57AFA749@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210331211708.55205-1-anthony.l.nguyen@intel.com>
 <20210331211708.55205-10-anthony.l.nguyen@intel.com>
In-Reply-To: <20210331211708.55205-10-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: df4f2948-6511-49ce-dc03-08d8fadd6004
x-ms-traffictypediagnostic: MWHPR11MB1728:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB17285B3DCABBF547D7D1D879FA749@MWHPR11MB1728.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:345;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AHwVvoJDrSZlrxpJJP8Sp/hmyijkxt2yilRYSJtmUWfaTAurC6ogDJcK0mXicTSjnkr4lP+yctRWxbNOIuw+8oS5FHYKMYkhFcypPu/nQHZMBHNP30cybcEFCd6jjjY8Uj9jnIBgb/Czc46FJs2CyrfWkiM4kNu9Km1x2uAOxJRCpVKjeCv/eTjSedvZ7WBbh6vlDZxZMTQHWeurZDFexbEs+uUEpr6pL9PrdlmLpYuMJNIBVdtYZyEvnN2bawUkej8FdciZXm6CzNM/k/7rZkhtcF83+RrhW7AiMxlKG8dvrv5GstXZceFLSsfPfmSSmGqGCu6BV7ZijEvz3yhw4s5513sgqyfFpYsedQSfKocIae9G0vBCfLOE2N2oiOZK/OalOLGX4NtWnAKiwhrimZXxyZlYPfqQr8V3kCL/vCKXLMLMY1i8AJ+lpvfU3JBNauzwHm75/iG14g4At9Rb74LHxDJ+grUXFVVOsP8NZMI9KoCXNul2JKOrvs6f/ZAqMldRV3BdsElXx3pjl3IrHb37nYDgAbPFnQ/TtJF9yuEjsulqDZX8RTBgU7rHQ8H2rMfMg9VemAjvLXu5adsvtno00dD1GiCoDFJ0dyGrdtlhAWw7m4eY+eeJaWKsJFON7UBhdpTXX7SsDI3hq0+5iGi9snpS6QJ8nJGQ7UHkPks=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(366004)(39860400002)(396003)(66446008)(9686003)(66556008)(4744005)(76116006)(86362001)(66946007)(64756008)(66476007)(71200400001)(55016002)(478600001)(53546011)(7696005)(6506007)(2906002)(5660300002)(26005)(8936002)(38100700001)(33656002)(52536014)(83380400001)(186003)(110136005)(316002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?SuUdQRrC3gAzHPgX408cHnGc/dfEFV2S9xaz9dbVqPh8xMBkkhGFAAPY6sqz?=
 =?us-ascii?Q?ZI08iqX0AaLSm00XQh7KgVmbdsrozu3tv8A2tJctzaEA6vFZtHkbRjSNvYqD?=
 =?us-ascii?Q?bq6WaPKRwhUvmzyo2+mlIGy27ya4gDnVCCPJUViLafIByuH6tqYABpv1nKmt?=
 =?us-ascii?Q?I2C/3eQbkoYDM0y01D20bsZG1206H0CGFD4evx1ZWm9OSQ4dY9ssrFzcEAzc?=
 =?us-ascii?Q?QSH9iZdUSfE7Q0HYpgRcxcOYJiVsZ+P3yUyTYiA/fIgamBCywicGdr7bkMn9?=
 =?us-ascii?Q?Du2T+bjB+o0BTzdDZt+K9ZP1Ecd9lbYaTpL8C46XjUlmLY1p3nOPQwF/SnHI?=
 =?us-ascii?Q?8hAdoWHJXZ+X1JSTk3cwU5MPu2sQm+bU40ZrAgbFEJBFn1nMkWrQnYlNP8Ph?=
 =?us-ascii?Q?J8rLzHJQ3PWVVEbsY3Gg1oQgs24pGFYbCwFOeVvhS4im005kl01bmVL3fmWX?=
 =?us-ascii?Q?FnCnzMJh/Dyr0vTOR74536kmsuL6F192+pU5D3T3PxmtFVZZEHEQVYu1IuE2?=
 =?us-ascii?Q?81CIZxOpLeMiojioV2S2+mGLR51ZsnUxjEMT/UsTDAvJbSdsIJ2VRN5HFw5R?=
 =?us-ascii?Q?Sf29BTO/HdXdyDS7ZI3hzE0t8wRZWchGZNPG4okG50DMhKFNcGYnLCde6lpx?=
 =?us-ascii?Q?qC244pve6B7vT7uyOi8ehfGV6Cr2CLvEUoX8IrnukDkJmRF5cXw37qR8Z6K1?=
 =?us-ascii?Q?fuRib6az89dHKbXuqd9+l9pRxAccQjGKnk4WrCs/G+hbB4C/dk1nbaH7JrkK?=
 =?us-ascii?Q?apCDc/sau3hWwWDqPstgAYBFifQYsjJ01qjMtJ7inC1EJarCdPgbNJ9vh+aA?=
 =?us-ascii?Q?jF6xv/JwKPcnd2vCOTptnicHS5FLm/BQToEg44TBjbLkg9Z+AiAMj9da74BQ?=
 =?us-ascii?Q?/mA3bqK42t3KpDmRTzZplN13AOAHyKD1dr9r/pMaw3OVLniVvEA5PsILTXmR?=
 =?us-ascii?Q?9xuIDrYBR3SDtsg8teAcSWn8TLn2CKBfdglvpL/uzu04lbS74Bpa1E8bAzOj?=
 =?us-ascii?Q?JAw3W3sbZy699Mg94Mw1gLt8ANdcmudLAjnZ9sTC1XHYm4sb9ab2ENDTeTUl?=
 =?us-ascii?Q?P+9QCI1Yh+fWrZYKBHqVrh6EvPYYG32jzsQGYmaKvhu/11mdaHdppJgBHnWK?=
 =?us-ascii?Q?N8Ta7W0OxmmK0OAWf8S3/vTVWk34GHdTyJGWSfAoCTcexpbcOG/A03VVAcnn?=
 =?us-ascii?Q?RgXoiwZl9TwrI6bJLS2tOuam5otZvsrHo6clsuWziIz7Ek4gZGvfukYJmI7S?=
 =?us-ascii?Q?gjR3ZEZacyNrDrFbdH5AQaTcReto0chZDMod9EQ9LGS+b6XRBE+cDACukCcJ?=
 =?us-ascii?Q?ckxh1rVuGK3vYv1ANu4GZjqJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df4f2948-6511-49ce-dc03-08d8fadd6004
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2021 22:26:37.6830 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qjZ1llfnmZqU57IfosS2aAKhkwiFNVK25VukQMDhfJQWLP3Qn6T4n0Z89Ow9uCi9XWLy+sEpUTCtLHxUV+S5LSlJ8Y7ZpTdRQ6xv1KljqNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1728
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S58 10/13] ice: suppress false
 cppcheck issues
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
> Sent: Wednesday, March 31, 2021 2:17 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S58 10/13] ice: suppress false cppcheck
> issues
> 
> From: Bruce Allan <bruce.w.allan@intel.com>
> 
> Silence false errors, warnings and style issues reported by cppcheck.
> 
> Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c | 3 +++
>  drivers/net/ethernet/intel/ice/ice_nvm.c       | 1 +
>  drivers/net/ethernet/intel/ice/ice_sched.c     | 1 +
>  3 files changed, 5 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
