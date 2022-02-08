Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B28D34ADB08
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Feb 2022 15:19:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06CA740590;
	Tue,  8 Feb 2022 14:19:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kpmMrcS_SkkY; Tue,  8 Feb 2022 14:19:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A656440240;
	Tue,  8 Feb 2022 14:19:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5BAFE1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 14:19:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4815240240
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 14:19:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iUTicffhBqrh for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Feb 2022 14:19:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4EE61400F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Feb 2022 14:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644329981; x=1675865981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=smyGZd3QzXwpMAmUiR0oarNI9ZK3aMBGSXfwN8g7eZI=;
 b=cSES9C7dSls6Gw2B1ufC+HCYwl3e7AxmiB3mBGsk7mj+oIHV+Ob5iITF
 lKKioypmSNuDoQ2AGue9V9jCph323GcE8aHFvoFuljnXkNlJ9LSs3gAOX
 Wf010J9GS7OEVM5HCfIV7DIZRa4nQSx0mjXePoGvsPz2ds87DRYSMF4RJ
 2T9DZEXLWKCbilp0CcoO31pbDtpZc7EVXhOTP8ffMX2odkmTAvzLVm0Ng
 +30m8heHu8vCSjolAoO6hCU9uliW1ahLpvUCkeQ2S8L+wwLYUVQsmHrAb
 26Ni0wZmMzuC8VeNxsq+AbjBH3KEagnBFd0xWn4i0iFEP+Q6emDdPCQLN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="309699611"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="309699611"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 06:19:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="540614269"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga008.jf.intel.com with ESMTP; 08 Feb 2022 06:19:40 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 06:19:40 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 8 Feb 2022 06:19:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 8 Feb 2022 06:19:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 8 Feb 2022 06:19:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkidhVtYzLTw3917J0/fCM4SMMYwAz62oukBo9ToTCF/7NeN599UNxmGOyRwG6VuxHfQvem2W5hjOfF47d49/sWymQTQkA1jScopkqkoBXtvrUWQC5GN4F3kfJ2Mj42KXyxFZuonN2hubzaMnlsfJ/Ib0CcX+Sflv3ImortZi1xGMuqbmHUUJDhBXRkzWlat3gLgMvp1RPQnt0QuZ2CRgrvWpmWmdGGU2bImELD6EPI+lEcJUaJLToS8dDXvyOnWtOM2h0kraGXAtfAChYoEVp4DTpaluQqpBOrHTj0nnqOOpqVWdb8OluoFTYKJRIF/9nCDWTusntGJnWEY/mPpzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ooibzFNRjGEhRUbAx/o4nd+/JKINs4nsVagyUSUXzec=;
 b=bvorXaLCLElRJSphpgsuVauCFMV9kXZh0pko9KqBpNvMXmz3dr/fHfSL1JDQP+mftlTrqVlWww5Q84P85TQEAY2BjkSawPdUBoiZyAV7de8/gytMeGqu4I0c771VxyKiHibTkcksT4QjqzIHSw1nR94IS2PfmJBVn6w1cljrP7/FiHOkTzHHMeVWuyL+zcr3uduwcTHuqslU0BTfgbHj/CcVEaAdzIiH4jdScA78YNX08JsGXwbrdLVD51TlY5hBDrBiPAmAJski12Qd4XQv3BQiox3Q8Ni9SEqOQNQ6/KtNpLKZIImOqI+e4mv5lXQ1zf5VOlu6jmnOPPNmiYWz1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CH2PR11MB4277.namprd11.prod.outlook.com (2603:10b6:610:46::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4975.11; Tue, 8 Feb 2022 14:19:37 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::fcc9:90bb:b249:e2e9%8]) with mapi id 15.20.4951.019; Tue, 8 Feb 2022
 14:19:37 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix adopting new combined
 setting
Thread-Index: AQHYGCEC/4ToWsLmGkyj7j7qvzrv76yJvXEQ
Date: Tue, 8 Feb 2022 14:19:37 +0000
Message-ID: <DM8PR11MB5621B359F4E99852BB9AD22FAB2D9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220202124454.28902-1-michal.maloszewski@intel.com>
In-Reply-To: <20220202124454.28902-1-michal.maloszewski@intel.com>
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
x-ms-office365-filtering-correlation-id: efc667ef-92b9-48a4-8def-08d9eb0e09de
x-ms-traffictypediagnostic: CH2PR11MB4277:EE_
x-microsoft-antispam-prvs: <CH2PR11MB4277A4DC0F362BB5F0F79E71AB2D9@CH2PR11MB4277.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:439;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IrIgT+U+uTHI0b7qtlcF8zFcv5z1BSO2T7FLGGblakta9Y5Shf/jKsuw8s/EcU73W1uj/jJwkuBtEHFaS3pEezPw8KOOcuMuQ4GGnQFCofUBMRmdC26Vi79xQUr3S5Mwgb4FEM8ksZ1QxU2aEsc3gqqrCyxJXLhCPGrl84XwFsVMT4X9LySIq+SVSjoeJZp4Zg1+5LaD76uXOPyaPHGqmmZ7w4j1Z05zOU+KnwoqK2Nk/itNqJ7VfTO4gwGIYnkMPD5nlmR+4pFkSfHdtOBCIeSTDLtOsCNec4iH6m3Rp6d96LJt88pjVZ9rUGr+U/RMCgfSwY5gc1rMK9DEKeVUrxuaXs0o8jPbtqPJQG1rvKALSbXWF+Hoo0f6UhyF0kMGNe8DpuI55uyv9SOjjcyU/s9Em76Eg2Hm4cKUF4EpirSDBVyB4+RUzr1hF3CHmfYGCJLcskU5yB9d1J1SNwkX8spAG0PjFAoeKo6HBzAq4CFzXEMh6r+HINpWEB4y6V4oB5ZAPUakQ5hRyN/EIlxTfajsUID72eRmtAlFw7HRCvB25CY/MI7X+83CQXxMLrNZy6aRfp2uMQgUdDqBsyTdyjiy6ypyDqmOANT8fzgMSr85NLoFKidhAyMgVSSnwF4uiD4MxXgPud6gtiyLwxRUAWqnPzeJnDWg8Rin41blyfcoOtYfYdFDP1WRWYUK5NRIj73pvCdj0uWrtUZmntZZTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(53546011)(9686003)(86362001)(186003)(26005)(107886003)(110136005)(54906003)(55016003)(33656002)(316002)(71200400001)(508600001)(38100700002)(82960400001)(122000001)(7696005)(6506007)(83380400001)(38070700005)(66556008)(64756008)(66446008)(66476007)(8936002)(8676002)(4326008)(5660300002)(2906002)(66946007)(76116006)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ev1fSkC6ZvC4qs9jGtctiwbXsBfaMbyyUZ9xiIknjrkeOkYtmmlidQQbK4Mq?=
 =?us-ascii?Q?TG8Qf4vFKQaStvH2Ey080S9Uxvuj6L2gkFF0cEnFwG0dFHGRko3+9GzWuHXj?=
 =?us-ascii?Q?5S0G5nSHxxvu7/D6IU93HUwrsd89VwrScJJ/A4aIgELNlTA7RTLHJK+c+TrJ?=
 =?us-ascii?Q?AgXVAXmFYc85qcpeo1ooeOlxXzSWg9KjYMTT5jtad8T/ty39hzlzQfLox3/z?=
 =?us-ascii?Q?Z+KPJrbau6t2grHOORMUoFdKqTDi5QdbF2Sm1kvonIeXcDtz+fRfFaFgfTXX?=
 =?us-ascii?Q?eZZXvRpX0ch/mLk/0XIzDGBFf1+h8/YPnSY3oQQJJGrDkuQrEOiy4vQIKMop?=
 =?us-ascii?Q?4HDz49yt7AcQYj9AEqUw280XjO3RuvQodVAzchlGCF/NJdjorLcxpQsCGAx/?=
 =?us-ascii?Q?zERGJOgcgTVKXSfNp8XLigy0zCOy6yXDu0g7MJgTNQWZei0mfmYNhjfLHltF?=
 =?us-ascii?Q?xTr1+dpPEHo+LyIw5hwQ8W9A0PKrYCTbBat6OF9/sdAflLazUpmfSXmrfE+j?=
 =?us-ascii?Q?IJmvVj/hvAsjT32Mcmi0iuSQQUrYR8L4HeHQmyF7IKDuj8Lbp7SgI6rsBYZi?=
 =?us-ascii?Q?hXyOVwtTshXuaqoc/cdksVvJ63jUBM4cRRMBC0EiEyF7V/FrjENEZxszU/Le?=
 =?us-ascii?Q?ZsOjgvgqaOQAmx8XhGtpCmg5xR4r5faGXebNH2/ALkT32YE9q1h/JfYOWNJZ?=
 =?us-ascii?Q?O7wAaU49H+UB+sahNVkuIzyKYKeWVLYVYptRI8NxhgEVlgYJEaLcquHeUGna?=
 =?us-ascii?Q?EwHIptvgmE7+U8x2Jd3jS2WDVEgUT7xJkdVI81yGmQ5MQfpHode0oG5VFPOz?=
 =?us-ascii?Q?xgYhantx4xMadR761qTCIcpHQ0Utq7Y4NpSZAbNiG745BjIhfPHCyUZPOtor?=
 =?us-ascii?Q?iJtpL718jmA6/DTsTqUAtbjU7gxi5uDKhBk59K/am8kkgN5b9BfGTIdZ3ah+?=
 =?us-ascii?Q?/1t8hHF0aQpmzjDK8qzUrtMDTaBgHNPdPgN+qd+7EoVUe8Zewrg/IcRZZSp3?=
 =?us-ascii?Q?p2FvEl14mVNhYMDWYQZpvOOw1RYIVhXjQ7+buUrfTbLw/lRoWxp4+ucaUzYG?=
 =?us-ascii?Q?/JwE5Nt0oLdqte0E1h782epoeT311C2e/hzZZLaHC6z/Bmk52HMalUwWPojg?=
 =?us-ascii?Q?456urY1fYxsuNrkNQu8A8qIvp7tlo0z7IhcfS825mvAUtBBCwMYTH9d7shFE?=
 =?us-ascii?Q?OkhJe5SR9EgR8ALKgELwJaz2kAVIPewb2MjNbNaLgGF20i2x7WvsGzndEGvr?=
 =?us-ascii?Q?OrTNMZS/LHSbpczL7iSISA0/DoMQKLxjvJ/BiIzah/W2fQIc/TjNvG+flAoE?=
 =?us-ascii?Q?Z9QrArADDqwD1lHwbmxj+CHNqD2v+IxAk1FUM3ug8pK5dBxCxVnAs66Quwr7?=
 =?us-ascii?Q?igzdy1dmjLXpN650rX9lSDgHl4uEUfPGgrnjdwjX30B+VBHESCK+6EMyL+17?=
 =?us-ascii?Q?/vOGVF3O7U16+jluC+UO/veHgrEQVRiRXzb0GmLMJYcLDcKoogGvq96FMUlz?=
 =?us-ascii?Q?oCEy++7qyb/PiyFix9PnOF4rqjm0p/IZlO33CJathjXM5i4kgd0mMECXdVlo?=
 =?us-ascii?Q?VWzKxKeVgDmVK9Lt7MpuBHlo+6MQi237Au7f5lFARQXgnkFxQKEwZLdiLNrs?=
 =?us-ascii?Q?kjBxFJq1zka8mrVfBA0k+B20X9dgii6+6URxFpC1WX7LQ8kViEIb2UkKlLn/?=
 =?us-ascii?Q?vws+pg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efc667ef-92b9-48a4-8def-08d9eb0e09de
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2022 14:19:37.6035 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XFwnNIeOOk3XoXjdkaFan9hXpERiOs2IYy0lbEeiGtFiSrbJPYe5AC9819Eyz0m3WGX4lpX7N82DHLlkXH5ycGRbOeA49K4wYJvRbzT5W48=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4277
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix adopting new
 combined setting
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
Cc: "Maloszewski, Michal" <michal.maloszewski@intel.com>, "Williams,
 Mitch A" <mitch.a.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Maloszewski
> Sent: Wednesday, February 2, 2022 1:45 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Maloszewski, Michal <michal.maloszewski@intel.com>; Williams, Mitch A
> <mitch.a.williams@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix adopting new combined
> setting
> 
> In some cases overloaded flag IAVF_FLAG_REINIT_ITR_NEEDED which should
> indicate that interrupts need to be completety reinitialized during reset leads
> to RTNL deadlocks using ethtool -C while a reset is in progress.
> To fix, it was added a new flag IAVF_FLAG_REINIT_MSIX_NEEDED used to
> trigger MSI-X reinit.
> New combined setting is fixed adopt after VF reset.
> This has been implemented by call reinit interrupt scheme during VF reset.
> Without this fix new combined setting has never been adopted.
> 
> Fixes: 209f2f9c7181 ("iavf: Add support for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2 negotiation")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
> Signed-off-by: Michal Maloszewski <michal.maloszewski@intel.com>
> ---
> v2: Changed the fixes tag and made commit message more detailed
> ---
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 13 +++++++++----
>  2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index bb8f9740e776..f1849f3a2ace 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
