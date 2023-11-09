Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C15557E7538
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Nov 2023 00:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4F5FB420A0;
	Thu,  9 Nov 2023 23:41:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F5FB420A0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1699573301;
	bh=qEvmyO4Yan9RVrDZKZuzkIW6+4DTWDGw2E/oHr1CSYg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KT2+/IYYiBp2cW/YIs0DTniDavkeMsr2Iwiq+vXoj+HxWay+Xm3DcbnjsRqowKc2K
	 oucsoOYFQtnuvp4EzBpdufWZX2EtOCpYIHTgn3zKubaM45kfgy12oGiwq/JBTq5+am
	 mIfqtkFHuvxXlrKZ/l8ryup5kCCSR010goZeWYKmCBbfzHQ5Fa2drfUEbXqVF3tU3j
	 JXHZ4rrIQWhF4YQRSzatoDZ9Kwy8JTb6zi+mY0quw4eTwCorOBDTvEUk6MYQ2QzpJM
	 lcx2VtlH0CcXa3YVDk5QZjwCcCSU6SrMp+QTFZ3or7XJcc51QkrhrZAXHmo+DUHCzq
	 uf5+qagwx0tgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYX3GfQKbOMc; Thu,  9 Nov 2023 23:41:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9195241FE7;
	Thu,  9 Nov 2023 23:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9195241FE7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 24E371BF371
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0F6B60D79
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0F6B60D79
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SEQ8GWkSxHAz for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Nov 2023 23:41:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3099260D71
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Nov 2023 23:41:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3099260D71
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="456591228"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="456591228"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 15:41:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="767163497"
X-IronPort-AV: E=Sophos;i="6.03,290,1694761200"; d="scan'208";a="767163497"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 15:41:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 15:41:27 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 15:41:27 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 15:41:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z7BgqnypFtd4k/VVVNJ5MTVo6FrrZPFKRPZh+RPVm2aLtbVdjQxIeQV5Y02fK53lAh1e3dXJDRiley7kZwo+eP16F2rlufiZVcZ58LVWDd6obq33DTMJVRMCyUIqpHIn+fYSEZUcXjVsfFO3VRxxb0fk2VtIKNssbit2YeR2EkCur4/fO8+0d9qbNCqWK3K/NMXc463AYE/v8NTeUXI9C9rAttjfoOoMFPPMP2CK7mIKrdvW0SQ+NqE3BSjRWliS79vEH+3Rd5mYh0EFUbFvusIjfoarwPbsHLMiP9IaOc4YbhNT9M1GN5Kd8RAgvPgTncuf0OK3kZaA+k8i8ueYog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Duz77gEZfVQFiowliZTcK4lKXHQ3C92fTyKzcSSnGV8=;
 b=L1aXl6ersVLE45YSy8Pu9MgnwyHtKWuU/NMzXb1ewQyeqdI2BtolGc8HK2vodueeZN6WOYgTcUB2lidbqjmUIfySb83Ph36kCVQz6bhMgBcU/xLu7tHg145H0eLrZ+cP/vUdbTx1gjBJyX2+YzW64sri+cyfgkVzmQnino49flmeWjTADvTrGoLoDnQ+DBUydr/WcoNI/XNrQGgPlJXGwvY5Xm6tPLM9GPfIp+1DJqMOWisKHbS2uZDmpt219UB7OQIS9HoCZduPvFtE6ldIJMLgnCcII/JU2NGRz9rwlHpwkykqJJXBPNnuAFGs8ai684XL/nQibDDaEr8bqtlswA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5028.namprd11.prod.outlook.com (2603:10b6:303:9a::12)
 by BN0PR11MB5696.namprd11.prod.outlook.com (2603:10b6:408:14b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.29; Thu, 9 Nov
 2023 23:41:19 +0000
Received: from CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::57c9:d0e:9f47:4c63]) by CO1PR11MB5028.namprd11.prod.outlook.com
 ([fe80::57c9:d0e:9f47:4c63%4]) with mapi id 15.20.6954.029; Thu, 9 Nov 2023
 23:41:19 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix check for dpll
 input priority range
Thread-Index: AQHaDB0dG/iQ+bpjMkORKBTipmZ3wbBys3gw
Date: Thu, 9 Nov 2023 23:41:19 +0000
Message-ID: <CO1PR11MB5028F5C6C56A972B22B5CA99A0AFA@CO1PR11MB5028.namprd11.prod.outlook.com>
References: <20231031170654.1115160-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231031170654.1115160-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5028:EE_|BN0PR11MB5696:EE_
x-ms-office365-filtering-correlation-id: 7012c32e-b36e-4746-f7cd-08dbe17d5fb3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cShbEM7pjct+tOv66lrPZ9Is/GZ2ZLbq1u186a+qIs3Yjtz/kTkqZgJL7eEbWjIeA4xo/nhuLzCaaQ44uuP0Xp5xL3z+/S5E68n+IIunc8UNq9P+XPnMHMz2d1bBDdZafhLbkWyBm/0TEWBjuxtVxjZyxhr0M+ASy9HX3WcmavzcOjzPL3OK+GmN78iGoMFjBYDqGSe7W/ypzY8H01vSI1QdL++F1pxnzGp0nSEeZEicfILCsu2kGg6W93bRP2Pyb25RUo2Hx2gz7VnsUhEBx3OWNt03ruv2RxZLQiljz1kT0UuMpuPcZy3lp/7nII4oEjkE+hgODoNa4669LS/5b3yh8cKtkIjCCSKsRP/OGUrGBVMlEX1HSGzTnM5Vobdy1XANQUSTiXiVK9ciLqxwXYwtDMtyoCg7sHZRy8/PtrBvuEZO6XuWfLXEUb8wakKP99ZiokKXneAOL/mnV0uOhje1viFMq8V5koFaMPt9KXfRtwjqN6h6kq6hy2tKkM9MhYV4DaKW2QF+1Pp8AHbMrIC7slLP81FvRYiKXf7ordjAUxxtxFZCQSv97/voHw5xK2kHTCDhlq7VLNBfZBJ/2zVQthnq+4Pqqpj7kk7YofPkW5W3BXHT/CFi0yVuIFUD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5028.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(478600001)(9686003)(83380400001)(38100700002)(122000001)(26005)(66476007)(54906003)(66446008)(66556008)(66946007)(64756008)(76116006)(316002)(7696005)(53546011)(6506007)(107886003)(55016003)(71200400001)(110136005)(82960400001)(8936002)(8676002)(4326008)(33656002)(2906002)(41300700001)(52536014)(38070700009)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PJRLLRwLPHsSmPJT36CV6Xq+PLOrPUvRA0jGxHf+IcfdJ0tYdp9XQbGvHNYd?=
 =?us-ascii?Q?zXClE00c1bMgoOkOxSGs5sZ8Z8u4KiMvzsuQ7aAvwBIHPsnV8m0n2eTf1QMB?=
 =?us-ascii?Q?aFwRP+6xLOU1QNN88084HmqlBdL3tk4Ng2qgKrxt3sSsEhYBY9x1pOP3XgyJ?=
 =?us-ascii?Q?cuo52YVNIvYQIIcMG/sDbZ3YPd4059Ov9g98Djla27tirtZU9GN67ir6MTjB?=
 =?us-ascii?Q?f0bRZBVCwPZqsaavsmqegvHlR5v2Y7Gs6ZhiiWJbNpahb/P2xDPa7dKcmcEh?=
 =?us-ascii?Q?SfcgvvyBgAYt8+TooPEN5t98FCuxMn/NcPFBnjQKDD7Mr0l8177Runeo10fN?=
 =?us-ascii?Q?4J3/JQxZSzvdO57GOIqCDTBiyKWnEdzzzbAQkUCOYZu/Lb2ShxFp1wsh5VVM?=
 =?us-ascii?Q?GqoJeM8kSW+ucsnqvspjoPqlOJPYGjqEkBx8EzueUiqVs3uIzlgAxDDH0hYW?=
 =?us-ascii?Q?2I6zT/UqnUMWQl/8Cv6OO+AxdphXhmYlCY4Hf3vlIGgDu2OXAlnUX64RCqBX?=
 =?us-ascii?Q?2C/RGBvVZcNjPjFvmXac30YVxPm58eIpj8Z8FOFlRVvn5smIdJxfDHY/IG9u?=
 =?us-ascii?Q?UeP5PlOGDQqLFsDzK31YVBHx/lpkhcb0Xj16x8fHne9dzfSQtRayja0qSbMh?=
 =?us-ascii?Q?82u40bKvppC+5Hh1zh1iOg9RRRTxABl6P6V0kL4gxjc5I1P6mVNMh81el07a?=
 =?us-ascii?Q?Xgu6xKkm6fsgAoXiLVRoSeYcIDwwcMGmO8C+UIs6quLPgwSDgdMsxtXYt93v?=
 =?us-ascii?Q?OWfpKUi8HSdQEykgFlLBQhmkqySZAfZgwHBYXxLF4WSk3LZ8DruvFFJhGyh+?=
 =?us-ascii?Q?b5fzwB7hfACrEzhJXmdNFU4YiB5c54KsUqprclaTR32ufRAo4truLLtR+Qdl?=
 =?us-ascii?Q?GhBohXVwb5rWolZT8mznqbYJm67Ht1nG/iOtz4aw0sxWGMVTqBIR531Bwj+k?=
 =?us-ascii?Q?qYszm/MgJjz2n5/ZmMZ0/jVaOuukY5eV0pdK9SGBEBedg90hPpOydh7arf4N?=
 =?us-ascii?Q?pPmqm2oTcNIh5fYQio1wb+ilq5RAUmB0uE4yA2JMH2hh/dLvvR1pB1HTIuvZ?=
 =?us-ascii?Q?nCMPKhmm9fEGN2pcrF+CTVjA2X5DYChfs8vsuRMfby8tz3+TbUMfw9e9n/4W?=
 =?us-ascii?Q?g/JRPGIKZEeOqr8MKbLW8e+rvY+gWXpqu1YiRM30ETrJwDfaOfdAm/ssjIPN?=
 =?us-ascii?Q?CcU/S/F/TCGk5jWdRwlS7Z/1Km+LN1KMgFT/bBV4Zqqp6grsDkAyO5xMABjk?=
 =?us-ascii?Q?NrEgfefn6FooafG+YmpQauaVrMXZHLnjfyU+YJ7zLTdD8BjIANnNwPJnDXl2?=
 =?us-ascii?Q?ook8Kp1HP7D9G8rePBTl2y9bKCwhWyjEiN9IbF6GsgHtMB8lgQ8Sk0EwlLCQ?=
 =?us-ascii?Q?Vigl3MP50/nb3tSq98El28bhBHdXrwBQmgxr4t877r+mMXST52FtnaznWCug?=
 =?us-ascii?Q?sipas2LYkogXNAJgLAl5dAqLhdcJikLuCvXuZ0sLSnBybnraTs0+Y5FymNrl?=
 =?us-ascii?Q?c1hKZrT7swdPxbY/yvfQ3jqNyZRxPeoS6t9U9zmQALkvrFhImFgdY4eZ4T64?=
 =?us-ascii?Q?8v2oJaY59ssjiI7yULPbi8SpROSb9EWvtrY4iHuH?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5028.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7012c32e-b36e-4746-f7cd-08dbe17d5fb3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2023 23:41:19.5648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aHb+dF023N+UQA87Lldu/NF/1LoaQOrEJVJI4HB8I6MPF1CqqcfxufmjtfW00l8XZxJCZqUZImqf/xlRMcHEm/6XRFAf4z9A0/FBH80xKRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR11MB5696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699573290; x=1731109290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RmB/gbcHlQ5zL3nlSzLFzgloqnovFCJ3b4jNj2R2VqU=;
 b=BeA8GmoMumYTXjnayn6MbpnFcwWuvfsmRvkEjcC636x1eV1umUe8x5X3
 DSGyh6mizKgNqFaBIcfBxnIOFiGODR8f5Np7Z4smIhQfSz5MoBoUYNPSa
 Ehvl3F1RLCLIZ6J29fhKpr/3SsrsbYyzfdP4YyrFThgpFb216VVLoFgDL
 EKHofFNreEv921+fBAh9r9I3PH6I2cNe8iGn5vlP9Or6VReF4FuTBUEHI
 ExZu8/IiLW9EuZwycyjCeLalfvg5qlAoQSn8sQSU7vUc9O+ApnFe0LCAv
 Q28Xd12jlUvRd4GERK1w4iRi1ujCGC8khAW0NttTBg6d+6jRdn8kePj8i
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BeA8GmoM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix check for
 dpll input priority range
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
Cc: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkadiusz Kubalewski
> Sent: Tuesday, October 31, 2023 10:07 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: dpll: fix check for dpll input priority range
>
> Supported priority value for input pins may differ with regard of NIC
> firmware version. E810T NICs with 3.20/4.00 FW versions would accept
> priority range 0-31, where firmware 4.10+ would support the range 0-9
> and extra value of 255.
> Remove the in-range check as the driver has no information on supported
> values from the running firmware, let firmware decide if given value is
> correct and return extack error if the value is not supported.
>
> Fixes: d7999f5ea64b ("ice: implement dpll interface to control cgu")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 6 ------
>  drivers/net/ethernet/intel/ice/ice_dpll.h | 1 -
>  2 files changed, 7 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
