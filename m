Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2A8A45EF9C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Nov 2021 15:11:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C21C3607A1;
	Fri, 26 Nov 2021 14:11:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9I-XGMrn8Zr4; Fri, 26 Nov 2021 14:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D03B260790;
	Fri, 26 Nov 2021 14:11:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7195E1BF844
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:11:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5F4E36078B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:11:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w6wAA6pV4XVJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Nov 2021 14:11:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB764606CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Nov 2021 14:11:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10179"; a="233162889"
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="233162889"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2021 06:11:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,266,1631602800"; d="scan'208";a="458188941"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2021 06:11:02 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 26 Nov 2021 06:11:02 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 26 Nov 2021 06:11:01 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 26 Nov 2021 06:11:01 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 26 Nov 2021 06:11:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MLQYyh2iNzk+nowqGH6vdn0GZofO0ERMrnJfilq6LMzgPGZXQXwA4A5y88QfaRZmqafokY6We4jdJFaRK613LN7Mp+mvIKWhoGUus37gGseO41T//erG1Wrds5vR1bVspuAR+wlhaSD3Fkjmvj9q2U2+cGf9TVV0XLRnEAQgNFZBQAfbp6SpCQPiqYrHxdqyuI2d/MzcA4vZpFk31zEs2I/wqed5IvpZh97uKSdHT1agLaSsezUSR66eDfvrb47D3mU4cKj+XPMmPihhxroT237MLQLL58NoKygcdvgaOwYQtfIS0ILa1KUVfHnHwd0Ah75v8YkzPRnvDIKXF/raLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bVvBhhf0OfjBX8NH1tyrFtdn7kx6sFZsdfSmaHbMuvk=;
 b=WGrt0K5aqVSY30FV50BO1cdjhvkWHzyRrtIBuS17EeOcoErUvKi24l6EKc/8wt7yhAp7dTeqvAX4TyALONlTbtY7r8tGAa88SsHfP2Y60WVvPWBscmj65K8ktMLUNh0qKuene1hfqbMPsxumAebwRw7FoP5/HcOkAXcAbtz7YBcMi0D+vSUnbjqzDG3CAJrJ27rf0mx6GNL6l+N4LWB9IWX8Rl/JSRGku0hPQcd7EmDeHxbd28BR02S5myIX5Z79VP9901bbtenu7VS3NoZp4jMAUqb/itzTDAjQU+BXefT51w4SDyNFTtUx0vL5U6j7pqLuyBxWv81AR4HdFwwXYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bVvBhhf0OfjBX8NH1tyrFtdn7kx6sFZsdfSmaHbMuvk=;
 b=I6wbdZXBxcoNSicMT6xFO+v60CPyAgkVqTrym7+sCN8i+tviyHDPlQPdXk9z50a0lp+hmorj+tp5RX5kg0JAD0mqdxf8jY6lWEHEyyGwHcjYV/fzEMC4J+ZcH1fCZZSn4TogkXHEKxUw1zNI4ksNt1PqqsMO6u5KikNe63P1ZC4=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5606.namprd11.prod.outlook.com (2603:10b6:8:3c::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4690.26; Fri, 26 Nov 2021 14:11:00 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%4]) with mapi id 15.20.4713.025; Fri, 26 Nov 2021
 14:11:00 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when
 setting descriptor count
Thread-Index: AQHXymnBtB6+Bka7IU2JyrOL1x7yzqwWCfmg
Date: Fri, 26 Nov 2021 14:11:00 +0000
Message-ID: <DM8PR11MB5621018A00574B5CA3C5DDBEAB639@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211026125909.28459-1-michal.maloszewski@intel.com>
In-Reply-To: <20211026125909.28459-1-michal.maloszewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b76e984-3ae3-4459-4eea-08d9b0e69342
x-ms-traffictypediagnostic: DM8PR11MB5606:
x-microsoft-antispam-prvs: <DM8PR11MB56063BDE608200EC65AAAC66AB639@DM8PR11MB5606.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w44J+euya1EQYpRRvyD1DUT3n90fisEdCXtNoQjHifKQY0TUO2WN94GINdvaoTmPMWft9Oveo/wceIOxLTnFhvuU6U81yqN2WbK0W/ozJRIhypVAmh6eQZSlS4moQ4dTHEGJ/HVuT6U9qQpz6iP09AexWsfMQvDckxdkQoZNeL568cNF4/R0fTghy3xNthkY5nwXRhql1g9B6UB9VkcnjnYSgfR9squvpu1rq1aqmqKMuQh5FTZLmoNADvW6eb8di0NXU81CXcCZi9DYKod1uU6DRX9CfI+6gxJJA2gPqavGPcyJoSN+Uq/TZftr9wZMvSWaY32Gto4rwGaidMZvIzQYMXytibLdJLUoUUDR6oz1Waj2ggbYlf5VKV4pIQ8i7bDScKRs+dBzFQheMhzpc4v6UtUEFOi+g3/O1hwtbHPlO/sIhMZ4UunxdgY2tvYrbU9kYIu7z3fVnpWnhajSA3dnXJrF7PBJNYxaMMqk+gCGwN1uHkko1ipcWD3LodEK84WjLYEG9JXX3ZYOHmSSR2EPeOdcGpE7jarBEiUSOs8PIP5WElJQ2+X4E6evXynOIbo77UMYhP0xjRWldKICK3deSSzXvr437VkIElmDjj4TV4TiOCKGW3MhS971NWZDcxOHF9y4+UON86o1rXFad1+kk4yRRhE5gesmuOfe9SsiTV7wD/uVjF5irJ5MJ8zj73dXMToHrknPKIkXl0lJUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(2906002)(53546011)(6506007)(82960400001)(7696005)(4326008)(508600001)(86362001)(55016003)(26005)(83380400001)(71200400001)(66446008)(107886003)(64756008)(66556008)(9686003)(38070700005)(316002)(8676002)(8936002)(186003)(66476007)(5660300002)(76116006)(66946007)(122000001)(52536014)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?6Y3tD96Ev1OT/WZvX+DwHSRs6V3yavvX8XXaBQB6FwkLzvouzlnRWiU/iY?=
 =?iso-8859-2?Q?FK951bY1oTHwxsl2372VJIGBJnEDcE0ADyRRsLT5zu9sWjMbnPB1e6/HFH?=
 =?iso-8859-2?Q?Kw/1+Itcy2iG3HpUio9sz3MMwWCq3utOo7LvWcVKD/fz0tZ9C6CvFMLd68?=
 =?iso-8859-2?Q?vhpjvoPlWNwTeJr0g3inU9GuFS6BRc83+0r5oOkpWVpFl08s4QkQC4G0HO?=
 =?iso-8859-2?Q?6yMi5ZZh1AHlasvMNhM9O0x+PhIEsMZKd5CKIjcMcqZzuzYSbZTFLcP3DU?=
 =?iso-8859-2?Q?GBnLsurQv8Be66Hokf5INiZ6yF0NjopZi2G/ZPdMLBrSX4m64CMSHSdR5N?=
 =?iso-8859-2?Q?VbDexGUq5lbhEztCN7axWdOity60FGMdBAFJNlp+M/91IqWdqn1/xGkDpP?=
 =?iso-8859-2?Q?misMP4/vLMRi48cPjCzSdd5NJsTA7eRYx/xfkGVljipjIy8XHQRqRwEuDb?=
 =?iso-8859-2?Q?kbU0mmUtjnqsEjnEadWRLMmFdJZIJcTTBmrmZfQUoFy5cfbCmX9m4gt7Z0?=
 =?iso-8859-2?Q?np+LOr2wtHMtAuN73pL6meZxLgqRx2GBv36S8ccGWBSemJouCU5tUABm38?=
 =?iso-8859-2?Q?BNJjhrLmVarbMvw/emJHN+NhQ5vJj0KH5yKXDXwsJpHsSARiy9OFASIROu?=
 =?iso-8859-2?Q?EsmeJDpm6xlkDX4hnP0s0YZM8E3/zP0w5hXdEK8yrSJ2m6YiVqCmkWa3jF?=
 =?iso-8859-2?Q?+9ssyEeJm1l798hSSMlijVh+9T9wrF/jpFPAYt90G38/oeaQyq4dDL0Dzc?=
 =?iso-8859-2?Q?xHwxIA7c2yQfTcn851J5HGtriQNlOYh0/yU+MXAwdIvJx+hIZhUxX095gj?=
 =?iso-8859-2?Q?4Rp2l0HoVU5zRh2al4YZDbAvkqe3pUcrR894Kh7JrvlnJ8V+tgH48AXIgY?=
 =?iso-8859-2?Q?2Q6/YIOKJ9Ty18kiyKJv1lKfJydiiiLknF5F6YBIrnY7tfzecaPhKWD8t+?=
 =?iso-8859-2?Q?+BSVbEfPWDluDUQQpd3buSmqBnHfFXpdmoIpCkoUmShsmY8rdUEsjSeCto?=
 =?iso-8859-2?Q?wuQ5IHRH1uxwE37YMdYao2h3FsXGp2jD/7wyv3c+I9ItoZ8O5kQpA12r5h?=
 =?iso-8859-2?Q?yv0OjONoUDRHHzMtVeYWKg/8+7erBRDGgIqtslZi3cUv8fWxNYmxzsTQxe?=
 =?iso-8859-2?Q?QRP6BKf+9/9q36WpFG4VCxvVZU+QVRUag6kHzL2tvELUbKvbk1fJGA5MP3?=
 =?iso-8859-2?Q?CRZJzdKerMc8VoUR/wcmiffHt2fG9bmRhOA3hmvgZWL0rKhAsoY779YyUD?=
 =?iso-8859-2?Q?i2rjP01N/W1ZrULsRLnSfVC8q0xzksUvw1czBTE9YuuU8OcUvqfNcV09jz?=
 =?iso-8859-2?Q?eOt7q1712FmpHxC2wLAATatqgBkJG8FwjA6DebDeN0aAoqzRQ8Fb9dR1sL?=
 =?iso-8859-2?Q?E8231E0y4DMpTV0pjb2rvrc709Ada1khBVQgGjErW2Nywe7rGA8c7I1JMr?=
 =?iso-8859-2?Q?0gRfcPZGnQz2dfGvrhg/lZdC5jRdnQx6vwVrAuQh2B3Tat/RtbIoIYu1i6?=
 =?iso-8859-2?Q?LKcUoRv4cbCbZM+i2PBiA1Ry+T8IiLkHQMKh4Smhc6vPD0BOJ58j8vCCH5?=
 =?iso-8859-2?Q?nEiA3uwLcW1OKtZ8m/gDcwrB4OozpPFqZAGr0vg6N38UcySc+t5CaY8hKO?=
 =?iso-8859-2?Q?JHVluAbHDaQr/AvIYihUpO0rLq6foQ0kZt5o59uYFj27GLLFA5ZzXyDL7U?=
 =?iso-8859-2?Q?9zk6LyRrnJBFmjDTY0RGwKOPanHwY0IxHEzgpWT0mzrRtxc2O+szXyG2Pw?=
 =?iso-8859-2?Q?GTyw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b76e984-3ae3-4459-4eea-08d9b0e69342
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2021 14:11:00.7834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HDY5EfVQa12iAUbTNRkDz47KIUG4EQvVCtL1z7DJejn7kUrRcvI4eb6QXj2K3UfQIzZmqoiNVnOxQDizqswonI/OIAmCkyUz02Us3VCLA+k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5606
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when
 setting descriptor count
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: wtorek, 26 pa=BCdziernika 2021 14:59
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maloszewski, Michal <michal.maloszewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix reporting when setting
> descriptor count
> =

> iavf_set_ringparams doesn't communicate to the user that
> =

> 1. The user requested descriptor count is out of range. Instead it
>    just quietly sets descriptors to the "clamped" value and calls it
>    done. This makes it look an invalid value was successfully set as
>    the descriptor count when this isn't actually true.
> =

> 2. The user provided descriptor count needs to be inflated for alignment
>    reasons.
> =

> This behavior is confusing. The ice driver has already addressed this by
> rejecting invalid values for descriptor count and messaging for alignment
> adjustments.
> Do the same thing here by adding the error and info messages.
> =

> Fixes: fbb7ddfef253 ("i40evf: core ethtool functionality")
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 43 ++++++++++++++-----
>  1 file changed, 32 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> index 30b125d6f5..9522bce3d9 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
