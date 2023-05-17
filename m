Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6CD706085
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 08:58:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C66B6FE72;
	Wed, 17 May 2023 06:58:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C66B6FE72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684306694;
	bh=15AaWRF0k1abS7S/LYeA8EgeGcZlXhUh/nx6b9ZRx9w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2Y57zhTjgc3mOAGnB+gkhOK6UjFh/zlVVDvrktOCfd2nU5t84mwM85KbfFJbGaQS5
	 AzgcL1m0r6QBsDbRn0Eh+9San5oPRsoouxdqm/KdLiC+XhRdny8Otde2htK11murgS
	 8B0tQ6Gyic830dcChMmjKgA0VW+1OyxjxY6jkoLSO+Gx2EpfHe/dWZ5+s7+XR9qdOm
	 V2CqCswp8qt4mgFtGNgJ6KXGuBePO848lBnhD0zfhhiJcDpiaZtPy1jtceJxeakD3z
	 EJrSzT8Da14bWS3SSrT8YwO5Kjv2Knodgq0NcEoMSRcKnAnMWth5VBe7Wkk/tsqHrU
	 mPdPHKDhp2wsg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 47zGSKx8rPwr; Wed, 17 May 2023 06:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A47FB611FD;
	Wed, 17 May 2023 06:58:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A47FB611FD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB3F61BF4E4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 92E6F405DD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:58:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92E6F405DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q8KYG_4-L41X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 May 2023 06:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A48E340185
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A48E340185
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 May 2023 06:58:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="332043320"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="332043320"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 23:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="825856457"
X-IronPort-AV: E=Sophos;i="5.99,281,1677571200"; d="scan'208";a="825856457"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 16 May 2023 23:58:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 16 May 2023 23:58:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 16 May 2023 23:58:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 16 May 2023 23:58:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LpkOgwvxjc0T5iM6qChlbMLUQCrAKX15Emu8lcALXkjZh+Ps0fB75v7oZ30ICeSg1c23WQ6OXzYoqGHOT4b+XRXEX9pffayIxrwi78dUATNqs2NVY65+rRuaRoNCXg4XS5FFOjb7wLGMi7BQ/FNbe9iyo+Umz2UPviNwVWwFhJ1a5zJ5bzfnd+2N5WPaSnjeOpbK2Q6GSwUy6Kf1IXNbrDl8m1SiVbxNswb53c62qcvWbxaSBxOfstlVe/3TBlIIs4w1sAH2Yeu3QQUpzFzCMty6S3E39QL7daDraCtfiC7yTnCgd4rTKbypLbg2QFxRUTZ9+Sgy7kxTf0pwHVRg2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2Bpo5GM2HHx24+GzsyB2B9LSWzPiExayfQsTv2Vaj50=;
 b=Lg6dNvy9g0LTuHIcnUIwBed0ZTYOyOLIfjdGvtdpTms/8feVUiT+CoxLK8ezs1xx9bHA9mwnmbUoTO0pspEWl56bExNlIiPM9P6Mq6bxApnKpHOdUO3/EvpOYq1K/TZAJ5AaEXlcLxPS6xdsJO9q9SgDm6a+KDflsVnHia1oiCTk26XiOZhQD2c2quACmLGsaYifygM/TEcYyEA9VgA1eYIo1xfEPsQvcHZfMrpJQnrrqy0V+O+VHeUnyYKo/HiP7JheMPmgw6bDa2IWUQbsXduhbvzlykA3x46SjIbNaZrLb3BG96fLQG/Fmz/9twXX/Dmsh8BaX0qDXUYIcbYucw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by PH8PR11MB6561.namprd11.prod.outlook.com (2603:10b6:510:1c0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.29; Wed, 17 May
 2023 06:58:02 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::41fd:cb11:5af:c4f8]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::41fd:cb11:5af:c4f8%6]) with mapi id 15.20.6387.033; Wed, 17 May 2023
 06:58:01 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Buchocki, JakubX" <jakubx.buchocki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: Fix ice module unload
Thread-Index: AQHZg02SSqbS/2kTYU+5FaYxCh8f/69eDzQQ
Date: Wed, 17 May 2023 06:58:01 +0000
Message-ID: <BN9PR11MB535470682EEBA578D10F944B807E9@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230510092530.2103031-1-jakubx.buchocki@intel.com>
In-Reply-To: <20230510092530.2103031-1-jakubx.buchocki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|PH8PR11MB6561:EE_
x-ms-office365-filtering-correlation-id: 96e6ebec-9ca7-444b-a8f1-08db56a40e57
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YpN3eTXI/0V8cBn9mpavSKERqgWyxJTsKfaKU2vHtro9f8ggOdnZaxkpOymxmpueK0AMXmH+sys9dokHpVzttsmrIt1ipLK86xvhDffFt316rmo8eeZFntyFO28tVRqd2HNoOoeuOWCquu/+a6zCE9WvjzxZqeFNxifhvv4dAq1qJoWc7uhfkv7HXV+y0s2VG3Zf+ABHd6rweraTqk/hEhnHZN52XHv3EeiOKHPyu/HKYxRaza74NbOBvpESrMPD0uz8+U04bl16uBjhfUw3I3UUqF9OIMHxwEC5PwfuAEHYnjZx0awb4onkWVPg/h4PvZBctmg0YutPg/f5YGyyv1ZNtYspmqORLu3V3gf2WfkEJIPGKYNSeDt6oqZY55Ojte/kL4v31bj79ZLkndEZjEjVJXN2VqsWJP1VQQdzh8+Q2uXXxTYrC820EyH5d2JxtC34gsevZNT4wzyQ/hKnWbGbbBvdRWRqUYX2tucj2Ig3Syytlt0wajxQt27nL0wTkXlsY1x5oIaQKCqV7lRQPMiPrchWsDPVMifk5p1jF9PEi6vDtbGxlXxaGq9RoeyrTdjo23xVVO3vsoq1Z7M5C1I/2/yMY7dVZZQcl1/CYNTB1t3312i3zFFUdE0itzPO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(376002)(136003)(396003)(451199021)(8936002)(83380400001)(4326008)(6506007)(316002)(2906002)(38070700005)(41300700001)(66556008)(38100700002)(122000001)(82960400001)(7696005)(107886003)(9686003)(26005)(64756008)(478600001)(66446008)(66946007)(66476007)(55016003)(8676002)(76116006)(33656002)(52536014)(86362001)(53546011)(5660300002)(110136005)(186003)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VfUbEsxFHMd/umajQQq18W3aZGPnaH0UkR/QP+QFaso9eussXgFleLg/gziw?=
 =?us-ascii?Q?nYUiRETBqpQmRGh4K3vijbHiVlnaZCQSsPpUNivUSphmTU03VjhYYy+5NLbv?=
 =?us-ascii?Q?B/YB4gZwdl/YHPM9FE+UplOKJMLgWzD+xwrB9B2UOcCfOgp/HGIKZMM8jAKW?=
 =?us-ascii?Q?BmkkjwS0K2bSKK2ny6INNjCfSgsBzm1Vb9UEU4eIwAW7/rtArmQb3WjK3Whm?=
 =?us-ascii?Q?mZwP/EgMeQh0obZgDS1n5vxT7zn/aHYl2CMJxgIeadcC/o9b/n/x4qXCVfD4?=
 =?us-ascii?Q?Fc3kuUvWK55XP9Hq7Tom/o2VfmIYzkaA1A/3Cq7sWmC0crrKgJ9sf/crG8uN?=
 =?us-ascii?Q?FdChVxBs83Rp7xDMsafaPuIoxxcQ8qKM8MfkgP6CUz8QTZoBdkfWuGWbu893?=
 =?us-ascii?Q?Y+qSfHbsPg1Mdp248pkpEDsffrYa+uJOTHOsb8dbCePPUbrF9lDbcBnavQPw?=
 =?us-ascii?Q?kl0cP1ZGYTB8ehHLqKJCfoaUXkF7YltUW/MxLS8k96mMDDIWoOcligbfGOGl?=
 =?us-ascii?Q?Ux89Puay+mJhzkb0h/Zdnt3SK6g4ASIpssGwF01EqTLfBDwGAmFMMGH8uuek?=
 =?us-ascii?Q?HwYWGGxrexRCDkEkM58/zsnXiQMcAg1RjgEKeMY1OnFmVL0HlTx0UfSnmzzt?=
 =?us-ascii?Q?E2mga/itcmjWmWVZBsuVJOYd7eXYuw8ubUb0QZIWHh5b8nhnDDXdPnhyJpxY?=
 =?us-ascii?Q?N2GiVOKEDT9bzKkpYuWUf/JVAn46FWgg/nt6oI+2KGm6yRm01C+Tv5KGuJPw?=
 =?us-ascii?Q?023YUv8abSH7K1OuDscf7fv8+Eh2Sh68hPBQx+ef6EBILCoJOqInVfU6YiRo?=
 =?us-ascii?Q?zqI2ThYtH6yYwpx71v52QjYVGitDi8nuEc9sLB0l26ThkaenUI1Dwe7+i2fV?=
 =?us-ascii?Q?JGsymqxmf6soQTrUyL3oKepRHxgnhPnwQ6sRjcN9nBmqEyWkQnmilKsoVU11?=
 =?us-ascii?Q?hLcvyq/t+Q1T9IjwkAsLfkDi956IRARtc8ddu6djTRbyhrY/q4D9hnJizJLf?=
 =?us-ascii?Q?OrlLsceNN85oYUq0TD3YHb8YDlwvRnh6KcpTCbFBj2B0L0bmZdLov0NI1QbJ?=
 =?us-ascii?Q?vmhS961TxZ1TM9S/MH+JlgIgWNjFzpy2DdTCrom0sTo8xWGY/LtgkKlk8G73?=
 =?us-ascii?Q?cc7tsCXKCoco1lHm8fvFtglLsuiBGD/mmzSC+NotyPKZoPLUlAGieImbaA98?=
 =?us-ascii?Q?XE8dYP+dXyVUtuwWrQM/ZeFgP6gu+CzR0YavJlySMKBhD4knVXCKm6OEkKwa?=
 =?us-ascii?Q?ZO2ofN7ytLAg11A/0AEB/di3jnhowdHGvnRDbHdvne8cnb8EVdNSO9vmVF0W?=
 =?us-ascii?Q?8rRaMvQSjxRkGX3oVhITQ6aSmFpavFCil4V8yGSVgbpMBEpBbguM+jeN6QxL?=
 =?us-ascii?Q?nA7uRnx9rZI4BDPXJlJKSDMrOKMcpaYNy+B/qSfOrmRKrb6lJ88lJhEVwehk?=
 =?us-ascii?Q?dGPx82EG0mJznN695W4yTEySpHFQ96F9x4UDBnBE6+tK59r0KLIJqDrvuDTP?=
 =?us-ascii?Q?lByqZHXAPlogEf5FGEnR+uHseGRUjQe7ihUnwKtu1D/kBzjo4RHyHtJDhmiH?=
 =?us-ascii?Q?CsybrIOoxAV8S4KOEM+Zbx+idsFlRI7PkMt7pMCs?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e6ebec-9ca7-444b-a8f1-08db56a40e57
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2023 06:58:01.8009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +BOuq3oDb0H7tK/5oz1bkeqMiQnqUKBjukpskuSS7NmJ8LqR0uc9XqPp7ejOqjXbM6I1hjOOMD4S8KVWJZfhDy+Ot03pPhygiqKqP/96Ook=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6561
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684306686; x=1715842686;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WuvemUds+HiuFlaA+U6jtpB85c7L3sO93ZP2eTbtA6Y=;
 b=GA/psV1WngBW/KBRYdb7RCN0xNI8sUEt2m3ITKqYNgJzIESJUtZUS5Ua
 Bm2GlL3QhqEgbSLZ2mtfQM243nwJEGWF97zkXHo/V7GTtGeXMes1ayJTw
 r9Wp1hrxAVjlptcm1n26x/fw7Q/jhI3uK1+5jg6VbKyv40aWwnZ6XJ+gh
 Tdm93ELJn1bVQkSfFxqe3M66x9nIS+jo8WpHxphAV1DhVwRuRDOVRT2Mh
 U0RBj1J6Gn4nZNnsjSacw5lzttESP7u3qNx9uV9OpK+QgYcAoT7qyxncm
 qSbd5Uh+UuDwJcx+wTbcYsieV0m0GOlRen5eI8aiS27/yYXM28lPgck+x
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GA/psV1W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix ice module unload
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
Cc: "Buchocki, JakubX" <jakubx.buchocki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jakub Buchocki
> Sent: Wednesday, May 10, 2023 2:56 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Buchocki, JakubX <jakubx.buchocki@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: Fix ice module unload
>
> Clearing interrupt scheme before PFR reset, during the removal routine, could cause the hardware errors and possibly lead to system reboot, as the PF reset can cause the interrupt to be generated.
> Move clearing interrupt scheme from device deinitialization subprocedure, and call it directly in particular routines. > In ice_remove(), call the
> ice_clear_interrupt_scheme() after the PFR is complete and all pending transactions are done.
>
> Error example:
> [   75.229328] ice 0000:ca:00.1: Failed to read Tx Scheduler Tree - User Selection data from flash
> [   77.571315] {1}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.571418] {1}[Hardware Error]: event severity: recoverable
> [   77.571459] {1}[Hardware Error]:  Error 0, type: recoverable
> [   77.571500] {1}[Hardware Error]:   section_type: PCIe error
> [   77.571540] {1}[Hardware Error]:   port_type: 4, root port
> [   77.571580] {1}[Hardware Error]:   version: 3.0
> [   77.571615] {1}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.571661] {1}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.571703] {1}[Hardware Error]:   slot: 25
> [   77.571736] {1}[Hardware Error]:   secondary_bus: 0xca
> [   77.571773] {1}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.571821] {1}[Hardware Error]:   class_code: 060400
> [   77.571858] {1}[Hardware Error]:   bridge: secondary_status: 0x2800, control: 0x0013
> [   77.572490] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.572870] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.573222] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.573554] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
> [   77.691273] {2}[Hardware Error]: Hardware error from APEI Generic Hardware Error Source: 1
> [   77.691738] {2}[Hardware Error]: event severity: recoverable
> [   77.691971] {2}[Hardware Error]:  Error 0, type: recoverable
> [   77.692192] {2}[Hardware Error]:   section_type: PCIe error
> [   77.692403] {2}[Hardware Error]:   port_type: 4, root port
> [   77.692616] {2}[Hardware Error]:   version: 3.0
> [   77.692825] {2}[Hardware Error]:   command: 0x0547, status: 0x4010
> [   77.693032] {2}[Hardware Error]:   device_id: 0000:c9:02.0
> [   77.693238] {2}[Hardware Error]:   slot: 25
> [   77.693440] {2}[Hardware Error]:   secondary_bus: 0xca
> [   77.693641] {2}[Hardware Error]:   vendor_id: 0x8086, device_id: 0x347a
> [   77.693853] {2}[Hardware Error]:   class_code: 060400
> [   77.694054] {2}[Hardware Error]:   bridge: secondary_status: 0x0800, control: 0x0013
> [   77.719115] pci 0000:ca:00.1: AER: can't recover (no error_detected callback)
> [   77.719140] pcieport 0000:c9:02.0: AER: device recovery failed
> [   77.719216] pcieport 0000:c9:02.0: AER: aer_status: 0x00200000, aer_mask: 0x00100020
> [   77.719390] pcieport 0000:c9:02.0:    [21] ACSViol                (First)
> [   77.719557] pcieport 0000:c9:02.0: AER: aer_layer=Transaction Layer, aer_agent=Receiver ID
> [   77.719723] pcieport 0000:c9:02.0: AER: aer_uncor_severity: 0x00463010
>
> Fixes: 5b246e533d01 ("ice: split probe into smaller functions")
> Signed-off-by: Jakub Buchocki <jakubx.buchocki@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
