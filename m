Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEB974B064
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 14:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 061A341B35;
	Fri,  7 Jul 2023 12:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 061A341B35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688731284;
	bh=5/38DEWi8HKlHdJuEcntW2d/zqTXC/hlUmbNF1QQ3LQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3CdFqamaBwXjhcO5lCz853xeNcTQWqHtfL3jSPf3d9NTx9kqfuxr1Z+WycJDIQmTE
	 CSNjGme09VheYubMFHoVuRme2vwub0LiVmn0dCMjJqA7XNEqczT/GJFXRi69W2TSi5
	 bLWC67iwXndX10Z79lcsZiCGNAd8jBHlI6hggmo3VF9XmoiuVsRC25ByeUyze3L3JO
	 De1ENhvTMIoG8LKu+DU4hwcbyVsv0chp5qk8U677XB4pjiwIkcO3xBfgKxxULilWG5
	 XghrBX9HL6aJHwjzZzQs/JFnp+1Sp2tHbK/6eRYPKEwuvPcfjxT1omYtVlEdKC9gcp
	 XKyp1BQrWux9A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G79aDwvXgLXA; Fri,  7 Jul 2023 12:01:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5EC5E41B1B;
	Fri,  7 Jul 2023 12:01:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5EC5E41B1B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 582641BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:01:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FFFA81E93
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FFFA81E93
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StrtfChIv6Xw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 12:01:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69D1481E8C
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 69D1481E8C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 12:01:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="361342957"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="361342957"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 05:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="785344989"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="785344989"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 07 Jul 2023 05:00:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 05:00:56 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 05:00:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 05:00:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UiswObXMVSaGOjzC+KiDGQFNAkwAlmDa9aYLqUgR2TCsjo8ZE06tm4sr+7SJeDF93vMzqyew8Wl3KXvKMuj/Dqqca1OOdeTK8ZXXVJqVhyyEq4fsJ9kiNzKqR5WUrf2udkiAHFgPGFCDDZnEZgL1+f3j58fyvFsZSFkcmW0QxSTskcAyGWcEYkgyGiEMC+e0TBjjD29g60zYGIEelYYDPxZizndR72bcGg6kdxaX3esT1JhI+2sANAnmPJ4WaCfv8R1h8t5VT2I5n7OBYRgINJgPQQF18v295bQ83ju8Qnp++QeOtsxKj7W14GACJm7mRcN51jRuXTTzn6zKzqpGYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LrMPEawc/ZK3yzCGHYzU47nbKTh9mRVxRSJoXfFQh/s=;
 b=Hw5m54hdf5ZkkpajGjv7ByoJm5NB652WZpTc3z3DN2uNv94+vJVsb5oa2lnzZYDtqZgzeosEiGFYrqkxh8sRAX5FYOhyt105pTsk/6A6TlW9TzxLwLp7KRo9BwbZUlnw7o78YLxjidCjOB0TXsmbBKoJNEMYIpm26nCzfkgxd9WMTi+eZMNQkppKMglvIRC7h2TUycKDgZHezoOK+W5/5pZCFHjHdMLeVSUY9aambG82a2lltU4s4pJsv6cHbqugesNPh+BsyZigyWT6OuCOsvaQkhlc/qaU6pLeb+Zcddhcu05dlb3vPJZPpHnsXy2YXKJ9EXvaNha8AdScjNv2fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BL1PR11MB5351.namprd11.prod.outlook.com (2603:10b6:208:318::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.24; Fri, 7 Jul
 2023 12:00:54 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::93f8:ecc4:eb28:7e65%4]) with mapi id 15.20.6565.025; Fri, 7 Jul 2023
 12:00:54 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 07/10] ice: support
 non-standard teardown of bond interface
Thread-Index: AQHZo8XbgIlj8gAj3kaUKrNumZ5Ava+uTb5w
Date: Fri, 7 Jul 2023 12:00:54 +0000
Message-ID: <PH0PR11MB5013135C1959DC624138759A962DA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230620221854.848606-1-david.m.ertman@intel.com>
 <20230620221854.848606-8-david.m.ertman@intel.com>
In-Reply-To: <20230620221854.848606-8-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|BL1PR11MB5351:EE_
x-ms-office365-filtering-correlation-id: 98b56f69-da51-4b82-2ec8-08db7ee1d10d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nnjnOYSYve1RT/VAwk2Q4rAS2nLGq0uGNB4qeI8y8My06gsxP04MNfIJU8oL48WJgUTRfQ0MuEjw2C2jhXJTPYUREcMxg4gfAcep5QFVaDXPzJO92N9diQDl1XqWxHL7ktXv9uLte+P6066BsuLAC3HRmUH0XOKIJL0R/Ng+RvIfB2tyIVExGFJKRwwr9fo/LZk4XWZk+DSNw7H15xLPtgHDuALGVGa+lNvW0XnN6izWte5glT21HXGyAIJdGXmElr+gUSFXCNNQaZPeL9vvY8L9uV6zKJ5oDaaBVoF2LUVzrd2/tbDEohupnuvf3HklFzPNYZDU3l9QaGi9LGcMkrKsUD8t0oX4n7lH5bxWqamdDjD6oF9UVilHjbn4yzsxkszpL9QrkrfEtA5JZUNad84//J96A9rRM/g+2x2s1NFh+AmTPb4FsZr9g3Tg6u0AWI3xR90ZG1FlWaNuz4kAsJYjv4QcViIXm7Hx+dinVSOkthrGz6m5aiyCdcWg7QKT5jk+uWrROtQEYV6vGo+lhvh4gQV+57cRSaWeTyads+ohwvEJNGWnELegWrr1KtDkxAsTzJPuEdMqWCouEemCzwpCtHNmB0bA2C1W/plkM8KbBuRInfcOa9JVjnmaeX5u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199021)(83380400001)(82960400001)(122000001)(33656002)(86362001)(38100700002)(55016003)(38070700005)(110136005)(54906003)(71200400001)(7696005)(41300700001)(478600001)(9686003)(8936002)(8676002)(5660300002)(52536014)(64756008)(66446008)(2906002)(316002)(66556008)(4326008)(76116006)(66946007)(66476007)(4744005)(186003)(53546011)(6506007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yf10R4v4MlgOCYBe63p13pM/QuEqlF9BdAK+tXtNTEdIozUNj2Sgxxtb2u5n?=
 =?us-ascii?Q?d81C3R21gSkAhhTVS7Le71kS3Ujn4GD1meICHEsLCxM9Yf3WKd6ysAX/ikmh?=
 =?us-ascii?Q?yeOMDBXOl0vZkubYd8ippSE6+6VUeyRu624D0VPk3IayDQDmbG7piZSjayxg?=
 =?us-ascii?Q?JCsKG0h73+8agZDtbRKyE5dQwzCNv4eRO016rN1uTEAWNcr8Ms9xCA/fjctF?=
 =?us-ascii?Q?JrflxpIRZC152FMJMpGyaOTB0nRMuKCsikw9u2bxFlS/AlOS3gKaWLe6FbRE?=
 =?us-ascii?Q?5R84QIp7XUda/StFUrHIZ7j8G8CUNKeRDIh/I05yGUz3ANGaSbvBaLPmd1Ey?=
 =?us-ascii?Q?HFozGiCc3za7nxAgpn+23yddEqrNUvAMMviMV3IKyCOKXHNKIdvtfdpcJGiC?=
 =?us-ascii?Q?JOAxQ679Qt9T9TWrTfa1l5E8vuGVxFbaIW0EJcvUPhgSXvfJbjeWCgldJUVk?=
 =?us-ascii?Q?5+rVCiTfKMARqFUpeCXUAVrdQLqwN3JSM+vf/bOUx0/9vJl+Nkua1w+gp5H6?=
 =?us-ascii?Q?t/xoVLlUal6On1Zc6h7/cpaaUGEmWxlyXhf26PAT2BBO0aOYyUYNbhUJ3Hrh?=
 =?us-ascii?Q?w7vbEq2DBm+8IcQjP/WCffm8qZLdY37nmfQaTg8hI2w1sABCp8NMdMXV4zD3?=
 =?us-ascii?Q?7vgW0do/uzIs+yn8bX7UoWN4m/xZSSKjhDVt61Mb23GQohwG19OOS4zuO7cw?=
 =?us-ascii?Q?GpXI0nBc5jD1kukS47VXz4eUkZoO3ekTj8huAt9qf9X/k1kh8u4QrvNwEhCy?=
 =?us-ascii?Q?Ih4KxPfRG21hlCpkl+PKr/dDRjI7BkiFZuH9inknrOmlqp4osu/N7O3MKme5?=
 =?us-ascii?Q?BPBqAm3S6MD5iG3MlxS/39ZuPB3LCg802nNbG7fxFlIfmne1FkFeiTYiAnxJ?=
 =?us-ascii?Q?SZyuz8VgDpAnDt7S8N0LheUmxSMOm71wnU9AMlOrFMlv3iwqekYQvhQfPI0H?=
 =?us-ascii?Q?NMzfROFtbiyWD3EerBGofBck/cEpV6oM5EkekN04bNGQ9DTv6z8rpm1hD0zP?=
 =?us-ascii?Q?0qecAKUNiAA7JfvBk+nR5lwQ1qWcsROZofyuhJo9HVBn408V+JavERMWqHrp?=
 =?us-ascii?Q?iL0AMvrS0rZFssdyeUGMa08M2bnDaQ/ihbWaUeycgYIqr51h5ntPLr3LMm+e?=
 =?us-ascii?Q?M4Vv6kQEzjBlJzpPA0wRTu6zUYvfXqLHmmktQiZvX1tlnYBAmneM1sRvPpeJ?=
 =?us-ascii?Q?RQovA9RxkVSv1TUrzKWkZP9rhKQNGx+5ZIemRcAAt+49QLh+2NNiUaqYPh4f?=
 =?us-ascii?Q?VmNug2qTpPsiA9dJzp+zzmU5/w9Ove/jMWYHWc6zh+3wqWigOv2yhdG23LEG?=
 =?us-ascii?Q?cjW4wzuTLG2CAdtuBaNmz/WhTEDiMJ5Q6VJCiwO6KjKIThlnqZTvuKTd7zZZ?=
 =?us-ascii?Q?SEHjX945AppYvX2y82HG95BY83/efHAEOE9whpXQ/DP36J78MpNZl6ieGEby?=
 =?us-ascii?Q?O67Cmk9i+7T/j41nXM3RsTicnAl10Ts79CHbfee2XS1+ZQBZ3waocYnYJ9A8?=
 =?us-ascii?Q?Jk9dL8eSyuVXvbcs8jcobtXgnKqAhYSYVmATYjGNmuFgOTchTOHs4kV6eD+c?=
 =?us-ascii?Q?nwnYSv4WkoLZiBq6WwN5oYd1kb29tz25HHbjyIedXXzGcHlfWbcvfMJd0ica?=
 =?us-ascii?Q?xQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98b56f69-da51-4b82-2ec8-08db7ee1d10d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 12:00:54.3041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vVr+t/8qcdRcxIvn9SuxfDmyAmjyaWjNdRjLNzQm4fwHlVQYgn0uCJR2fMSpCTyhyFxatvN0FxlQ/eh/PubPZj5oeXRJYaMlzQJVxxjTvBE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5351
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688731276; x=1720267276;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qfvQQORwY+bUqnfh3lohM0A1HhHj3JV6s5TpZLtd0ec=;
 b=AtGH61perbN0+zel7u2f+qg5wonx2lX/8KJYdmuSQ8Z54tuXlqyyNUWx
 7KNTC+or3fKr3nGtY3sbAmwTCKBZrPfGeVYLm9LfqZnugu4pSRfeCorgv
 Dj21yE0rQIOMa2WePahsRV6Z3CKSlBmKJ7zCXoTg3yaArxjrpEa4GW6ia
 LUidItvG/d4xRMOMi3OmJFZW8BOUEYtlVhykNRo3O9S5LwG+kU0VbtM5/
 z3yoQJ4pQP+O7JUbLbus4Hhr9D6uWMfEQqkHOH97qS3kfD5+0r5DUV3U5
 kHS/21dJmzCEF1tzyadgFrc6bfHdhUrXrB9Q62bK/B20vDIRMKZtExosD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AtGH61pe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 07/10] ice: support
 non-standard teardown of bond interface
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bcreeley@amd.com" <bcreeley@amd.com>,
 "daniel.machon@microchip.com" <daniel.machon@microchip.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Wednesday, June 21, 2023 3:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; bcreeley@amd.com;
> daniel.machon@microchip.com; simon.horman@corigine.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 07/10] ice: support non-
> standard teardown of bond interface
> 
> Code for supporting removal of the PF driver (NETDEV_UNREGISTER) events
> for both when the bond has the primary interface as active and when failed
> over to thew secondary interface.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 47 ++++++++++++++++++++----
>  1 file changed, 40 insertions(+), 7 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
