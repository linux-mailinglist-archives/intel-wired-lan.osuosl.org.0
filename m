Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4146CCD37
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Mar 2023 00:27:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E946F6143C;
	Tue, 28 Mar 2023 22:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E946F6143C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680042464;
	bh=m2WLqLhDhRl860TIIfj/p2TaOLN057AfOq6ZOBVRC0k=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6AKD41zXZpkS4yBUnxJ/JTnuyCzykwVxadQouWCJA+HQ4UdWJLgmAPwP+WPduKfeq
	 +EjIPU73Sg/WzuriuSkBBDLQqKsm9si4loy4gNdjyaGmJIVDaCsnBQbi+xB//1kId5
	 QImQr8SgRRwnO0O+vUF6u4kE54ChqnjY3j5vco2y5Gl1oqp5S3JSsmHZrjrYxJfkrB
	 KeSsLux4lxKaN8IBZW2pRFjYbLivrG6+W50eNm9XdN1ZtBwfZdBvfg0XFWMTDYAqk2
	 ss5C8gify3VvTr2edqNEzV/dAp2hXiaAhqf1RGsBemfDAasnj78p8wSIDWFlRfaYnM
	 cYfZBU/AkfT/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nk7FARacWr29; Tue, 28 Mar 2023 22:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 678C161436;
	Tue, 28 Mar 2023 22:27:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 678C161436
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D0C591BF2FB
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 15:39:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A03AB418AA
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 15:39:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A03AB418AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mvm2iTAbzZhs for <intel-wired-lan@osuosl.org>;
 Tue, 28 Mar 2023 15:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7933C404D9
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7933C404D9
 for <intel-wired-lan@osuosl.org>; Tue, 28 Mar 2023 15:39:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="426874854"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="426874854"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 08:39:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="714289660"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="714289660"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 28 Mar 2023 08:39:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 08:39:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 08:39:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 08:39:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KlySMkfyPIj1CyfMVajIG+uKqPogWpTizrbI3qpQ6keYgnXK4xlJs5I2wDb3dubKwvuqkYjbcBecWfVNZppM1Uz3cwmTEQI08MGclTAutYsR2PiSve6wotLgTRMuwfeIvpDkook2PteUByCTS+1Ve8CIuhPawXF2yNgIQYSHMK1VldaaebVrR1F+eMonQwAdJljI89fGgXoyBBocUsNbzmaIkFDmjn+rqDCJ2j1BRg83Q4U9NyBwGWgIBbUvyemaaNkaCfXdpQwUretciRDOO4OHpT703uzijTgAF7LRFklbKuLmMfp1l53bj0qchZYGbSREkGA+q/N5ufB2QzgE9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mj+dCH1NYVQmUkMrLg+Y/A/2z11+W8/UIT156x1uaY8=;
 b=HKvhJc4ymbpBUfpdvnYHCE2f2Z9LveXu9tj/gHW6Uv31tqEawUc7CxmsjAl0ETvvIrjoZMIfQ7UiQ7f8hjyzCBo1Tpp2MHkHK1yWS4O/h+5wMs6yNtuN4MfPdk96i72/lCKPtjo71f2PtM5YrPzeQ2h/4y6T8F0I2FtjjKIwhhtuSXlSi0lww8PvupYOAgQfvmWD8wIaHhFMuqXSeWMjOzjtjYrtmpZwhbliTdvl1L+eLvmijwRpDqohGoViRI7y3gj6aNj/F/hozndAWPjrM0EPzOxZDTBHMQmcOxO4qtumhWkO0AZi7OkdF1+rCG3jXFkwsQEdCKylKm+BCTAs4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MW4PR11MB6933.namprd11.prod.outlook.com (2603:10b6:303:22a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.32; Tue, 28 Mar
 2023 15:39:21 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::d7f2:79e3:ea65:28ce]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::d7f2:79e3:ea65:28ce%3]) with mapi id 15.20.6222.028; Tue, 28 Mar 2023
 15:39:21 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: Intel-wired-lan Digest, Vol 416, Issue 5
Thread-Index: AQHZYYlINmq+SqIcUEqnNpxa8Xiiy68QUbUQ
Date: Tue, 28 Mar 2023 15:39:21 +0000
Message-ID: <SJ1PR11MB6180193A19142B25543200CFB8889@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <mailman.20365.1680016409.50374.intel-wired-lan@osuosl.org>
In-Reply-To: <mailman.20365.1680016409.50374.intel-wired-lan@osuosl.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MW4PR11MB6933:EE_
x-ms-office365-filtering-correlation-id: d2e44ff8-3b42-43bd-5c05-08db2fa299e9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VO900IS32e2WPc+jWrwB7RX9lYuvIPN3hYIy9Ludybdc3tGCM2nyd4Q2oXbiJZuS6X88V7+OwKqmxTZnHbcruLYAHZQJYgCsMOru3va5rn5p1iNUqs0daKj9thuYVF/bFe40hz6mImw5uRAGoCezW0ZGmgci2YDyeBqeP4j9kw9pV275rmFCm6zcqP/lWhHHO5jeYODLpgSumjxm1qe69TaO1zQ2t/4eMLFprfuH2zMDF9dFMgW8yxjg6gMo91R3CeP6RTKLvVR5RLX+4xnPjA9kIaakJdSkSYZY4llRb6HwCYKRRld2yPLVl6MF0L9RXZ9W9BtuN3dC/FMpCab0MWwpk/lg84WiaFYRig4ARoxRlkRTcnArEEv306ENZVmQ5sLdwf1obgF147xl2l2gDIH43gy1Lz7NIq4jY0pbiRiCU5gkcYUQbVh+a2otbfp2qsZsf1/IQXKVQDcsN+kcRthZ2wXiJ7VncOhen0M1I3c75KBYpgiSVcx6RC3XT9jPprfzxUgTAfQV24924JtBrb6IgP0F+R7X7jgAVAGhEp2I2dkY+LTg4r6HKUucy0DHUSKP7gmMiz2LyG6zB19x2ivJVjdXXHwGZEo+DxYdcmkSarrKFXsPejNThelx+SLK4ZAiWvLdAXVzu3MbfNu5RQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199021)(66476007)(64756008)(66556008)(66446008)(122000001)(316002)(6506007)(76116006)(66946007)(6916009)(8676002)(19627235002)(7696005)(9686003)(30864003)(41300700001)(5660300002)(186003)(8936002)(52536014)(26005)(82960400001)(966005)(83380400001)(66574015)(45080400002)(478600001)(38100700002)(53546011)(71200400001)(55016003)(38070700005)(86362001)(2906002)(33656002)(84970400001)(66899021)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?joMH+x14aRhG7jmh4wGNXgf/hLsAZ1cOyy/VULUCG6dgpA6zxcW82IsPsNRN?=
 =?us-ascii?Q?W2XuQbyHlojbKtvSSJY6Gz267Vw7o3Edq4XWVLzhN/dcYqeki6LEt0WqGNlL?=
 =?us-ascii?Q?kHNipy31qNmzS3HXwz1F6plplDshTLbHfSSa1tohBYpYpb3vfp1xcD8mWfBV?=
 =?us-ascii?Q?LSXkXzu8GhQKK2oUB+V+NHMSR8izguzmUxY7RxOYX0vJVueP20jNSnsQtwuf?=
 =?us-ascii?Q?5q9mBA5E+CYwYJsafl4PJ1JV8aHsH0/Y4V4l0R6wjdlg9aEpRZWIThNvYbAt?=
 =?us-ascii?Q?FtDW6umKFKSK/Va+xwh9rd7TC4mAZVnYNet54lmTODybx+cg5RGL9nrvBP9o?=
 =?us-ascii?Q?Rg3kibwP5Qg6G2+IpqTrDPPkQ0Oah9yB0vW8zgIp1a52H1bF4bB4MA4QaY7X?=
 =?us-ascii?Q?vMX6dhdKT0JqsKieNwd4nJ6wF01qZwNkghw5u3G0if/57VujiDj2GrOcAwA/?=
 =?us-ascii?Q?5mPlTnc1+QwjZFmyaGESF4rll53X+mkrJNf8eKuV1JykFhISH5V0EMw6SIxM?=
 =?us-ascii?Q?b8g7P41b62suHQFwbIT0pZaPi7sb83z543uWmrU71QZxWyOai/0hfFj03ByX?=
 =?us-ascii?Q?ipZTI9x129SSw6jZUdIrgWgGxmxpkVRCv67wvCtyJsX6za/ihBl63d/6hiny?=
 =?us-ascii?Q?zqgJllQ6bJvyiexKegBxpQ/wL2Yn9hIHsw2U60fwDyXvj/Mh54tMggzWDuf9?=
 =?us-ascii?Q?5claMPYZScyyTx/Y62pxhrj7mHIwy8pIgdoIJySCRHDE/LA7cQthpc7oxWjA?=
 =?us-ascii?Q?i4Itz5Jjph79HotZAVPvU/r1g5Mx/GdHs/mv+Cgu/Dt8e2lVQ8ZWyfL4jgZI?=
 =?us-ascii?Q?qi3BWHRQuEi1tCmkCDLyXlrsSPDQFIr3YgCl7e9VAfrlfYC4+3DhGZ0Iv4/s?=
 =?us-ascii?Q?iDtlvulMfM8G5x6M/fo9gQTIOAsq+0Mcm5vADjUaz3jtmVZ6H673zh36kWpQ?=
 =?us-ascii?Q?UjXPbxQozNhDb5pdv7R5RoS2xWGwUOL6Kk+8wl3Cwn7vNVxp7NSDWIHi7Z15?=
 =?us-ascii?Q?pJVoQKYGjDARqADlMyYf5q2sJzUqpp8qme7VLxeQcQrKoCQrHMUPC0VwLTqZ?=
 =?us-ascii?Q?m7yuUmpZ8VShvDStymJz8OgTALyAYkAHf1NdXho0ucLNcCHP4+JXa1FMhBcC?=
 =?us-ascii?Q?nGQHEtQfZeVWbT+1PXvjBnlpoSqT5d4OhjnHb0Wf97VRPRpVJGpbsdxdQgXl?=
 =?us-ascii?Q?4PbulUwxLFVDWRMOfqUDK8UGzX5FB1P8GqX3nzYuf6X8r3ub6HMUwi2+ir0s?=
 =?us-ascii?Q?LbEDIgpNogulzSDvq+jrgFhcEAX1ZRn9TReP5hSGnHCQrGc1F2G4thBlzZvV?=
 =?us-ascii?Q?6305iSL6YCKn8M2oh0fle4IXyDlEPvwk5zUW4+hsdz0aYpNjs+/bvCUPNTFp?=
 =?us-ascii?Q?hlFnHuLI37Efkq9LfF7ByurlOaVs4kAqo1ln5cC29TbJ0PIbtyFbnpi769wR?=
 =?us-ascii?Q?UYsaLW+jenW11mwIptaWP9cw2nMpUMCtXQavmN08B6gDtQDq1nHibLtS+XoQ?=
 =?us-ascii?Q?bcv4fpE2pOHLBinEh9VhfYblKmzi+Mlgv3slctqouFZp9lvq4GHyiuNgBga8?=
 =?us-ascii?Q?99DC+mgWOwpFk0q65zKf9YWLuSNlsbSYYdpc3+tKbJEIT4dNgwNWyuJEFDzj?=
 =?us-ascii?Q?WRcTkp3F66BtxGsn9EUC9yQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e44ff8-3b42-43bd-5c05-08db2fa299e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 15:39:21.6375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3jHzJbZ0MyHRYQsa3KgsSwSwVMl6WDLLuCpan57jh09R8pUuNpoP7P6HD4e362E0+k+NUNwncc4Xa3vAhrjYSv+y266iVC3H716wyK/528uNLX3NlThudwTIWbBbjBzD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6933
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 28 Mar 2023 22:27:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680017968; x=1711553968;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=KWAzAqdnhD1nsB2gZrFnUxzJ9G3yK6mTHxJADeLms4A=;
 b=Kodt2ZuYpVhvDhMkVqAAt0L8VWlXCLcfJh7G3aDFfiSvrMRbV1hUUOLF
 c0cET5O130FH7VQOGArk0gxLDcljCkP01R1dr+neOUbrYCuuJJ82JZmoR
 YDkt7fMxIKST0h1dIdIjoUIm6KEpYrqLXY6wCU16yY7NwMOsYdhoVJNA8
 bXiPym5ZDSaQZX5DUxEzY3r4tULhGeP6wndnkW6TzdlLbSsgmz4DuqwQv
 8CFQqBsosCfZhHH0xWHHxEod7TWM3h5ighc8iDFs47j6Y3tGLc2Jio2xz
 u0hmbyS5F31JgLgGtIYsvN71O6KgIVgW47o9cl6diXJJJ8vqNvPprxkK4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kodt2ZuY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 416, Issue 5
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

Hi,

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> intel-wired-lan-request@osuosl.org
> Sent: Tuesday, 28 March, 2023 11:13 PM
> To: intel-wired-lan@osuosl.org
> Subject: Intel-wired-lan Digest, Vol 416, Issue 5
> 
> Send Intel-wired-lan mailing list submissions to
> 	intel-wired-lan@osuosl.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> or, via email, send a message with subject or body 'help' to
> 	intel-wired-lan-request@osuosl.org
> 
> You can reach the person managing the list at
> 	intel-wired-lan-owner@osuosl.org
> 
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of Intel-wired-lan digest..."
> 
> 
> Today's Topics:
> 
>    1. [PATCH net V3] ice: Reset FDIR counter in FDIR init stage
>       (Lingyu Liu)
>    2. Re: [PATCH net v1] i40e: fix passing tainted expression to
>       kzalloc() (Paul Menzel)
>    3. [REGRESSION] e1000e probe/link detection fails since 6.2
>       kernel (Takashi Iwai)
>    4. Re: [REGRESSION] e1000e probe/link detection fails since 6.2
>       kernel (Paul Menzel)
>    5. Re: igc: 5.15.98 Kernel PANIC on igc_down (Kyle Sanderson)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Tue, 28 Mar 2023 10:49:11 +0000
> From: Lingyu Liu <lingyu.liu@intel.com>
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net V3] ice: Reset FDIR counter in
> 	FDIR init stage
> Message-ID: <20230328104911.687508-1-lingyu.liu@intel.com>
> 
> Reset the FDIR counters when FDIR inits. Without this patch,
> when VF initializes or resets, all the FDIR counters are not
> cleaned, which may cause unexpected behaviors for future FDIR
> rule create (e.g., rule conflict).
> 
> Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> ---
> v2: change commit message to apply more to a kernel use
> v3: simplify commit message
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_fdir.c   | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> index 4d007d8c2540..daa6a1e894cf 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> @@ -541,6 +541,21 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf
> *vf)
>  	}
>  }
> 
> +/**
> + * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
> + * @fdir: pointer to the VF FDIR structure
> + */
> +static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
> +{
> +	enum ice_fltr_ptype flow;
> +
> +	for (flow = ICE_FLTR_PTYPE_NONF_NONE;
> +	     flow < ICE_FLTR_PTYPE_MAX; flow++) {
> +		fdir->fdir_fltr_cnt[flow][0] = 0;
> +		fdir->fdir_fltr_cnt[flow][1] = 0;
> +	}
> +}
> +
>  /**
>   * ice_vc_fdir_has_prof_conflict
>   * @vf: pointer to the VF structure
> @@ -1998,6 +2013,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
>  	spin_lock_init(&fdir->ctx_lock);
>  	fdir->ctx_irq.flags = 0;
>  	fdir->ctx_done.flags = 0;
> +	ice_vc_fdir_reset_cnt_all(fdir);
>  }
> 
>  /**
> --
> 2.25.1
> 
> 
> 
> ------------------------------
> 
> Message: 2
> Date: Tue, 28 Mar 2023 13:25:55 +0200
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com
> Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix passing
> 	tainted expression to kzalloc()
> Message-ID: <2c1aeff8-4ed6-4971-5505-8df0da32d1ce@molgen.mpg.de>
> Content-Type: text/plain; charset=UTF-8; format=flowed
> 
> Dear Aleksandr,
> 
> 
> Thank you for your patch.
> 
> Am 28.03.23 um 07:41 schrieb Loktionov, Aleksandr:
> > From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> >
> > Add buff_size limit of 1280 bytes for user input value.
> 
> Why did you choose 1280 bytes and not some other number?
> 
> For the commit message summary/title you could use:
> 
> i40e: Limit expression passed to kzalloc() to 1280 bytes
> 
> > Fixes: f1143c4b0f60 ("i40e: Expose AQ debugfs hooks")
> > Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> >   drivers/net/ethernet/intel/i40e/i40e_debugfs.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > index c9dcd6d..b10d00d 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_debugfs.c
> > @@ -1356,7 +1356,7 @@ static ssize_t
> i40e_dbg_command_write(struct file *filp,
> >   			goto command_write_done;
> >   		}
> >   		/* Just stub a buffer big enough in case user messed up */
> > -		if (buffer_len == 0)
> > +		if (buffer_len == 0 || buffer_len > 1280)
> >   			buffer_len = 1280;
> >
> >   		buff = kzalloc(buffer_len, GFP_KERNEL);
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> ------------------------------
> 
> Message: 3
> Date: Tue, 28 Mar 2023 14:40:33 +0200
> From: Takashi Iwai <tiwai@suse.de>
> To: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
> 	<anthony.l.nguyen@intel.com>
> Cc: regressions@lists.linux.dev, intel-wired-lan@lists.osuosl.org,
> 	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [REGRESSION] e1000e probe/link detection
> 	fails since 6.2 kernel
> Message-ID: <87jzz13v7i.wl-tiwai@suse.de>
> Content-Type: text/plain; charset=US-ASCII
> 
> Hi,
> 
> we've got a regression report for e1000e device on Lenovo T460p since
> 6.2 kernel (with openSUSE Tumbleweed).  The details are found in
>   https://bugzilla.opensuse.org/show_bug.cgi?id=1209254
> 
> It seems that the driver can't detect the 1000Mbps but only 10/100Mbps
> link, eventually making the device unusable.
> 
> On 6.1.12:
> [    5.119117] e1000e: Intel(R) PRO/1000 Network Driver
> [    5.119120] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    5.121754] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) set
> to dynamic conservative mode
> [    7.905526] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed to
> disable ULP
> [    7.988925] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): registered
> PHC clock
> [    8.069935] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1)
> 50:7b:9d:cf:13:43
> [    8.069942] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> Connection
> [    8.072691] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No:
> 1000FF-0FF
> [   11.643919] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> [   15.437437] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> 
> On 6.2.4:
> [    4.344140] e1000e: Intel(R) PRO/1000 Network Driver
> [    4.344143] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    4.344933] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec) set
> to dynamic conservative mode
> [    7.113334] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed to
> disable ULP
> [    7.201715] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): registered
> PHC clock
> [    7.284038] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1)
> 50:7b:9d:cf:13:43
> [    7.284044] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> Connection
> [    7.284125] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No:
> 1000FF-0FF
> [   10.897973] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> [   10.897977] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   14.710059] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> [   14.710064] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   59.894807] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> [   59.894812] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> [   63.808662] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> [   63.808668] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> 
> The same problem persists with 6.3-rc3.
> 
> Can you guys check what can go wrong, or if there is a fix?
> 
> 
> Thanks!
> 
> Takashi
> 
> 
> ------------------------------
> 
> Message: 4
> Date: Tue, 28 Mar 2023 16:39:01 +0200
> From: Paul Menzel <pmenzel@molgen.mpg.de>
> To: Takashi Iwai <tiwai@suse.de>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
> 	<anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
> 	intel-wired-lan@lists.osuosl.org, regressions@lists.linux.dev,
> 	linux-kernel@vger.kernel.org
> Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e probe/link
> 	detection fails since 6.2 kernel
> Message-ID: <652a9a96-f499-f31f-2a55-3c80b6ac9c75@molgen.mpg.de>
> Content-Type: text/plain; charset=UTF-8; format=flowed
> 
> Dear Takashi,
> 
> 
> Am 28.03.23 um 14:40 schrieb Takashi Iwai:
> 
> > we've got a regression report for e1000e device on Lenovo T460p since
> > 6.2 kernel (with openSUSE Tumbleweed).  The details are found in
> >    https://bugzilla.opensuse.org/show_bug.cgi?id=1209254
> 
> Thank you for forwarding the report.
> 
> > It seems that the driver can't detect the 1000Mbps but only 10/100Mbps
> > link, eventually making the device unusable.
> >
> > On 6.1.12:
> > [    5.119117] e1000e: Intel(R) PRO/1000 Network Driver
> > [    5.119120] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > [    5.121754] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec)
> set to dynamic conservative mode
> > [    7.905526] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed to
> disable ULP
> > [    7.988925] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> registered PHC clock
> > [    8.069935] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1)
> 50:7b:9d:cf:13:43
> > [    8.069942] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> Connection
> > [    8.072691] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No:
> 1000FF-0FF
> > [   11.643919] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> > [   15.437437] e1000e 0000:00:1f.6 eth0: NIC Link is Up 1000 Mbps Full
> Duplex, Flow Control: None
> >
> > On 6.2.4:
> > [    4.344140] e1000e: Intel(R) PRO/1000 Network Driver
> > [    4.344143] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > [    4.344933] e1000e 0000:00:1f.6: Interrupt Throttling Rate (ints/sec)
> set to dynamic conservative mode
> > [    7.113334] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized): Failed to
> disable ULP
> > [    7.201715] e1000e 0000:00:1f.6 0000:00:1f.6 (uninitialized):
> registered PHC clock
> > [    7.284038] e1000e 0000:00:1f.6 eth0: (PCI Express:2.5GT/s:Width x1)
> 50:7b:9d:cf:13:43
> > [    7.284044] e1000e 0000:00:1f.6 eth0: Intel(R) PRO/1000 Network
> Connection
> > [    7.284125] e1000e 0000:00:1f.6 eth0: MAC: 12, PHY: 12, PBA No:
> 1000FF-0FF
> > [   10.897973] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> > [   10.897977] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> > [   14.710059] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> > [   14.710064] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> > [   59.894807] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> > [   59.894812] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> > [   63.808662] e1000e 0000:00:1f.6 eth0: NIC Link is Up 10 Mbps Full
> Duplex, Flow Control: None
> > [   63.808668] e1000e 0000:00:1f.6 eth0: 10/100 speed: disabling TSO
> >
> > The same problem persists with 6.3-rc3.
> >
> > Can you guys check what can go wrong, or if there is a fix?
> 
> Does openSUSE Tumbleweed make it easy to bisect the regression at least
> on ?rc level?? It be great if narrow it more down, so we know it for
> example regressed in 6.2-rc7.
> 
> 
> Kind regards,
> 
> Paul
> 
> 
> ------------------------------
> 
> Message: 5
> Date: Mon, 27 Mar 2023 23:05:23 -0700
> From: Kyle Sanderson <kyle.leet@gmail.com>
> To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
> 	"intel-wired-lan@lists.osuosl.org" <intel-wired-
> lan@lists.osuosl.org>,
> 	"Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
> Cc: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,  "Zulkifli,
> 	Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>,
> "MP,
> 	Sureshkumar" <sureshkumar.mp@intel.com>, "naamax.meir"
> 	<naamax.meir@linux.intel.com>,  "Avivi, Amir"
> <amir.avivi@intel.com>,
> 	Linux-Kernel <linux-kernel@vger.kernel.org>,  "Torvalds, Linus"
> 	<torvalds@linux-foundation.org>, "Ruinskiy, Dima"
> 	<dima.ruinskiy@intel.com>,  "Lifshits, Vitaly"
> 	<vitaly.lifshits@intel.com>, Greg KH
> <gregkh@linuxfoundation.org>,
> 	"Gunasekaran, Aravindhan" <aravindhan.gunasekaran@intel.com>,
> "Neftin,
> 	Sasha" <sasha.neftin@intel.com>
> Subject: Re: [Intel-wired-lan] igc: 5.15.98 Kernel PANIC on igc_down
> Message-ID:
> 	<CACsaVZL7ebZb_kfDcMdu4EstgKv41DRno4dNA9FVFEzbcXN8oA@
> mail.gmail.com>
> Content-Type: text/plain; charset="UTF-8"
> 
> > On Mon, Mar 27, 2023 at 12:22?AM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> >
> > Hello Intel IGC Maintainers,
> 
> Per a random comment on Reddit, to "fix the hang" with i225-V, if you
> rmmod igc and modprobe igc there is no stall. I'm seeing the same
> behaviour on I226-V which again points to this being a driver issue
> and not something that can't be fixed.
> 
> > I did notice that TX flow control is randomly not on the interfaces which
> points to something
> > racing. I'm unclear on if that's required for the failure. I've also
> > seen the interfaces come up with lower than expected speeds (fast vs
> > gig) on first initialization.
> 
> I've forced on both TX/RX at the kernel level (ethtool just wouldn't
> do it) and the failure still happens.
> I've disabled EEE and the failure still happens.
> I've disabled ASPM and the failure still happens.
> I've disabled WOL and the failure still happens.
> I've flipped the offload defaults to `hw-tc-offload off tx-gso-partial
> off generic-receive-offload off generic-se
> gmentation-offload off tcp-segmentation-offload off
> tx-gre-segmentation off tx-ipxip4-segmentation off tx-i
> pxip6-segmentation off tx-udp_tnl-segmentation off
> tx-udp_tnl-csum-segmentation off` and the failure still happens.

Could you try with disabling the TX and RX checksum offload?
You may run with "ethtool -K $IFACE rx-checksumming off tx-checksumming off"
on both DUT and HOST setup (if you are running back-2-back connection).

Does it still happen if you run above command?

> 
> I did notice that IGC_TSICR isn't "reset" like it is in IGB, but the
> failure still happens with this set.
> 
> Is there any guidance that the Intel IGC maintainers can give me for
> continuing to troubleshoot this core driver issue? Reddit is littered
> with reports about this (going back years) and I'm getting tired of my
> IGB box only hitting 400Mbit/s w/ crypto.
> 
> > The reproduction is the same, fast.com
> > on a client, remove the cable from the client while traffic is flowing
> > through the intermediary running w/ igc devices, reconnect the cable,
> > and then watch a hang, bug, or panic occur.
> 
> On Mon, Mar 27, 2023 at 12:22?AM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> >
> > Hello Intel IGC Maintainers,
> >
> > I've tried disabling MSIX as well as patching in _I226_V to the
> > present FIXME for a very similar (documented) hang in the driver.
> >
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/tree/driver
> s/net/ethernet/intel/igc/igc_ptp.c?id=197b6b60ae7bc51dd0814953c5628
> 33143b292aa#n775
> >
> > Unfortunately neither seemed to resolve the issue. Deeper information
> > is PTM isn't available on the PCIE bridge, and I can additionally
> > reproduce this hang using 2 bridges on Proxmox (on top of the other 6
> > reproductions with and without bridges). I did notice that TX flow
> > control is randomly not on the interfaces which points to something
> > racing. I'm unclear on if that's required for the failure. I've also
> > seen the interfaces come up with lower than expected speeds (fast vs
> > gig) on first initialization. The reproduction is the same, fast.com
> > on a client, remove the cable from the client while traffic is flowing
> > through the intermediary running w/ igc devices, reconnect the cable,
> > and then watch a hang, bug, or panic occur.
> >
> > [   10.333662] igc 0000:06:00.0 enp6s0: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: RX/TX
> > [   10.333843] vmbr60: port 1(enp6s0) entered blocking state
> > [   10.333846] vmbr60: port 1(enp6s0) entered forwarding state
> > [   10.333977] IPv6: ADDRCONF(NETDEV_CHANGE): vmbr60: link
> becomes ready
> > [   10.581669] igc 0000:01:00.0 enp1s0: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: RX
> > [   10.581846] vmbr0: port 1(enp1s0) entered blocking state
> > [   10.581850] vmbr0: port 1(enp1s0) entered forwarding state
> > [   10.581980] IPv6: ADDRCONF(NETDEV_CHANGE): vmbr0: link becomes
> ready
> > [   10.725652] igc 0000:02:00.0 enp2s0: NIC Link is Up 1000 Mbps Full
> > Duplex, Flow Control: RX
> > [   10.725829] vmbr10: port 1(enp2s0) entered blocking state
> > [   10.725835] vmbr10: port 1(enp2s0) entered forwarding state
> > [   10.725960] IPv6: ADDRCONF(NETDEV_CHANGE): vmbr10: link
> becomes ready
> >
> > On Sat, Mar 11, 2023 at 11:18?PM Neftin, Sasha
> <sasha.neftin@intel.com> wrote:
> > >
> > > On 3/11/2023 03:47, Kyle Sanderson wrote:
> > > > Hello Intel IGC Maintainers,
> > > >
> > > > I see there was a patch that was backported to stable (
> > > > 9b275176270efd18f2f4e328b32be1bad34c4c0d ) in early February of
> 2023
> > > > implementing ndo_tx_timeout. I'm still seeing the full register dump
> > > > and a panic on a simple cable removal while traffic is flowing on
> > > > 5.15.98.
> > > Commit 9b275176270e "igc: Add ndo_tx_timeout support" addressed
> a
> > > different problem: tx unit hang. It is not related to the kernel crash
> > > you reported. We have reported register dumps upon unexpected link
> events.
> > > >
> > > > Here's the output from my console line with full symbols again. They
> > > > do look different now with this patch applied. I know this was
> > > > reported in December 2022, please let me know if there's anything
> else
> > > > I can do to help.
> > > We haven't an exact model of the board in our labs - it is hard to say
> > > what is going there. We have many others models that work well.
> > > >
> > > > [   62.061814] igc 0000:01:00.0 eth0: NIC Link is Down
> > > > [   62.069169] br-lan: port 1(eth0) entered disabled state
> > > > [   62.077689] igc 0000:01:00.0 eth0: Register Dump
> > > > [   62.084172] igc 0000:01:00.0 eth0: Register Name   Value
> > > > [   62.091376] igc 0000:01:00.0 eth0: CTRL            081c0641
> > > > [   62.098865] igc 0000:01:00.0 eth0: STATUS          00380681
> > > > [   62.106357] igc 0000:01:00.0 eth0: CTRL_EXT        100000c0
> > > > [   62.113828] igc 0000:01:00.0 eth0: MDIC            18017949
> > > > [   62.121255] igc 0000:01:00.0 eth0: ICR             00000001
> > > > [   62.128698] igc 0000:01:00.0 eth0: RCTL            0440803a
> > > > [   62.136137] igc 0000:01:00.0 eth0: RDLEN[0-3]      00001000
> > > > 00001000 00001000 00001000
> > > > [   62.146136] igc 0000:01:00.0 eth0: RDH[0-3]        000000b0
> > > > 000000f7 00000081 0000007d
> > > > [   62.156111] igc 0000:01:00.0 eth0: RDT[0-3]        000000af
> > > > 000000f6 00000080 0000007c
> > > > [   62.166075] igc 0000:01:00.0 eth0: RXDCTL[0-3]     02040808
> > > > 02040808 02040808 02040808
> > > > [   62.176039] igc 0000:01:00.0 eth0: RDBAL[0-3]      04313000
> > > > 042f6000 04303000 04306000
> > > > [   62.185986] igc 0000:01:00.0 eth0: RDBAH[0-3]      00000001
> > > > 00000001 00000001 00000001
> > > > [   62.195922] igc 0000:01:00.0 eth0: TCTL            a503f0fa
> > > > [   62.203336] igc 0000:01:00.0 eth0: TDBAL[0-3]      0431b000
> > > > 04320000 042ea000 04312000
> > > > [   62.213307] igc 0000:01:00.0 eth0: TDBAH[0-3]      00000001
> > > > 00000001 00000001 00000001
> > > > [   62.223268] igc 0000:01:00.0 eth0: TDLEN[0-3]      00001000
> > > > 00001000 00001000 00001000
> > > > [   62.233263] igc 0000:01:00.0 eth0: TDH[0-3]        000000fd
> > > > 00000075 00000028 00000085
> > > > [   62.243280] igc 0000:01:00.0 eth0: TDT[0-3]        000000fd
> > > > 00000077 00000083 00000085
> > > > [   62.253246] igc 0000:01:00.0 eth0: TXDCTL[0-3]     02100108
> > > > 02100108 02100108 02100108
> > > > [   62.263219] igc 0000:01:00.0 eth0: Reset adapter
> > > > [   65.695646] i915 0000:00:02.0: [drm] Failed to load DMC firmware
> > > > i915/icl_dmc_ver1_09.bin. Disabling runtime power management.
> > > > [   65.709497] i915 0000:00:02.0: [drm] DMC firmware homepage:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-
> firmware.git/tree/i915
> > > > [   69.360523] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > > > Duplex, Flow Control: RX
> > > > [   69.371069] br-lan: port 1(eth0) entered blocking state
> > > > [   69.378124] br-lan: port 1(eth0) entered forwarding state
> > > > [   74.310776] igc 0000:01:00.0 eth0: NIC Link is Down
> > > > [   74.317778] br-lan: port 1(eth0) entered disabled state
> > > > [   77.080765] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > > > Duplex, Flow Control: RX
> > > > [   77.091325] br-lan: port 1(eth0) entered blocking state
> > > > [   77.098446] br-lan: port 1(eth0) entered forwarding state
> > > > [   80.737639] igc 0000:01:00.0 eth0: NIC Link is Down
> > > > [   80.744715] br-lan: port 1(eth0) entered disabled state
> > > > [   84.076683] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > > > Duplex, Flow Control: RX
> > > > [   84.087252] br-lan: port 1(eth0) entered blocking state
> > > > [   84.094354] br-lan: port 1(eth0) entered forwarding state
> > > > [   92.888365] ------------[ cut here ]------------
> > > > [   92.894997] Kernel BUG at dql_completed+0x175/0x180 [verbose
> debug
> > > > info unavailable]
> > > > [   92.904872] invalid opcode: 0000 [#1] SMP NOPTI
> > > > [   92.911276] CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.15.98
> #0
> > > > [   92.919245] Hardware name: Default string Default string/Default
> > > > string, BIOS 5.19 09/23/2022
> > > > [   92.929928] RIP: 0010:dql_completed+0x175/0x180
> > > > [   92.936300] Code: 95 c2 45 84 d4 75 08 44 89 c2 e9 17 ff ff ff 45
> > > > 85 db 79 f3 01 d2 45 89 c2 41 29 d2 ba 00 00 00 00 44 0f 48 d2 e9 7b
> > > > ff ff ff <0f> 0b cc cc cc cc cc cc cc cc cc 55 49 89 f2 48 89 f8 4d 8d
> > > > 5a 01
> > > > [   92.958191] RSP: 0018:ffffc9000012ce10 EFLAGS: 00010297
> > > > [   92.965381] RAX: ffff8881030f8340 RBX: ffffc90000755cb0 RCX:
> 0000000000000042
> > > > [   92.974609] RDX: ffff888101e00000 RSI: 00000000000023be RDI:
> 0000000000043b73
> > > > [   92.983873] RBP: ffffc9000012cee8 R08: 0000000000000000 R09:
> 8bf25443d96e9830
> > > > [   92.993161] R10: 0000000000043b31 R11: 0000000000000000
> R12: ffff88810310cb80
> > > > [   93.002478] R13: 00000000ffffff3a R14: ffff8881030f8280 R15:
> 0000000000000000
> > > > [   93.011747] FS:  0000000000000000(0000)
> GS:ffff88903fe80000(0000)
> > > > knlGS:0000000000000000
> > > > [   93.022078] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [   93.029770] CR2: 00007fd6f70df02c CR3: 000000000340a000 CR4:
> 0000000000350ee0
> > > > [   93.039015] Call Trace:
> > > > [   93.043211]  <IRQ>
> > > > [   93.046912]  ? igc_down+0xb05/0x2df0 [igc]
> > > > [   93.052873]  ? load_balance+0x139/0xa90
> > > > [   93.058537]  __napi_poll+0x43/0x130
> > > > [   93.063818]  net_rx_action+0x224/0x290
> > > > [   93.069413]  __do_softirq+0xc2/0x1ff
> > > > [   93.074805]  irq_exit_rcu+0x5e/0x90
> > > > [   93.080115]  common_interrupt+0x8e/0xa0
> > > > [   93.086023]  </IRQ>
> > > > [   93.089989]  <TASK>
> > > > [   93.093768]  asm_common_interrupt+0x27/0x40
> > > > [   93.099780] RIP: 0010:cpuidle_enter_state+0xbb/0x2d0
> > > > [   93.106643] Code: 9f 89 ff 65 8b 3d fd 44 7c 7e e8 70 9e 89 ff 31
> > > > ff 49 89 c6 e8 56 ab 89 ff 80 7d d7 00 0f 85 ab 01 00 00 fb 66 0f 1f
> > > > 44 00 00 <45> 85 ff 0f 88 dc 00 00 00 49 63 cf 4c 8b 55 c8 48 8d 04
> 49
> > > > 48 8d
> > > > [   93.128483] RSP: 0018:ffffc900000e7e70 EFLAGS: 00000246
> > > > [   93.135678] RAX: ffff88903fea1b00 RBX: ffff88903feab000 RCX:
> 000000000000001f
> > > > [   93.144907] RDX: 00000015a093d6fc RSI: 0000000046ec0743 RDI:
> 0000000000000000
> > > > [   93.154146] RBP: ffffc900000e7ea8 R08: 0000000000000000 R09:
> 0000000000000006
> > > > [   93.163362] R10: 00000015a091e22a R11: 0000000000000000
> R12: 0000000000000001
> > > > [   93.172596] R13: ffffffff824cd680 R14: 00000015a093d6fc R15:
> 0000000000000001
> > > > [   93.181832]  cpuidle_enter+0x2f/0x50
> > > > [   93.187193]  call_cpuidle+0x1e/0x40
> > > > [   93.192447]  do_idle+0x15c/0x180
> > > > [   93.197435]  cpu_startup_entry+0x18/0x20
> > > > [   93.203161]  start_secondary+0xf9/0x110
> > > > [   93.208810]  secondary_startup_64_no_verify+0xb0/0xbb
> > > > [   93.215695]  </TASK>
> > > > [   93.219552] Modules linked in: pppoe ppp_async nft_fib_inet
> > > > nf_flow_table_ipv6 nf_flow_table_ipv4 nf_flow_table_inet pppox
> > > > ppp_generic nft_reject_ipv6 nft_reject_ipv4 nft_reject_inet nft_reject
> > > > nft_redir nft_quota nft_objref nft_numgen nft_nat nft_masq nft_log
> > > > nft_limit nft_hash nft_flow_offload nft_fib_ipv6 nft_fib_ipv4 nft_fib
> > > > nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flow_table
> > > > nf_conntrack lzo slhc r8169 nfnetlink nf_reject_ipv6 nf_reject_ipv4
> > > > nf_log_syslog nf_defrag_ipv6 nf_defrag_ipv4 lzo_rle lzo_decompress
> > > > lzo_compress libcrc32c igc forcedeth e1000e crc_ccitt bnx2 i2c_dev
> > > > ixgbe e1000 amd_xgbe mdio nls_utf8 ena crypto_acompress
> nls_iso8859_1
> > > > nls_cp437 igb vfat fat button_hotplug tg3 ptp realtek pps_core mii
> > > > [   93.293844] ---[ end trace cf6cfea187f192b8 ]---
> > > > [   93.300503] RIP: 0010:dql_completed+0x175/0x180
> > > > [   93.307072] Code: 95 c2 45 84 d4 75 08 44 89 c2 e9 17 ff ff ff 45
> > > > 85 db 79 f3 01 d2 45 89 c2 41 29 d2 ba 00 00 00 00 44 0f 48 d2 e9 7b
> > > > ff ff ff <0f> 0b cc cc cc cc cc cc cc cc cc 55 49 89 f2 48 89 f8 4d 8d
> > > > 5a 01
> > > > [   93.329070] RSP: 0018:ffffc9000012ce10 EFLAGS: 00010297
> > > > [   93.336418] RAX: ffff8881030f8340 RBX: ffffc90000755cb0 RCX:
> 0000000000000042
> > > > [   93.345821] RDX: ffff888101e00000 RSI: 00000000000023be RDI:
> 0000000000043b73
> > > > [   93.355266] RBP: ffffc9000012cee8 R08: 0000000000000000 R09:
> 8bf25443d96e9830
> > > > [   93.364715] R10: 0000000000043b31 R11: 0000000000000000
> R12: ffff88810310cb80
> > > > [   93.374131] R13: 00000000ffffff3a R14: ffff8881030f8280 R15:
> 0000000000000000
> > > > [   93.383579] FS:  0000000000000000(0000)
> GS:ffff88903fe80000(0000)
> > > > knlGS:0000000000000000
> > > > [   93.394055] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [   93.402072] CR2: 00007fd6f70df02c CR3: 000000000340a000 CR4:
> 0000000000350ee0
> > > > [   93.411583] Kernel panic - not syncing: Fatal exception in interrupt
> > > > [   93.420283] Kernel Offset: disabled
> > > > [   93.425950] Rebooting in 3 seconds..
> > > >
> > > >
> > > >
> > > >
> > > > [   39.107467] igc 0000:01:00.0 eth0: NIC Link is Down
> > > > [   39.117619] br-lan: port 1(eth0) entered disabled state
> > > > [   44.607761] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > > > Duplex, Flow Control: RX
> > > > [   44.618409] br-lan: port 1(eth0) entered blocking state
> > > > [   44.625541] br-lan: port 1(eth0) entered forwarding state
> > > > [   54.752628] igc 0000:01:00.0 eth0: NIC Link is Down
> > > > [   54.761354] br-lan: port 1(eth0) entered disabled state
> > > > [   54.768615] igc 0000:01:00.0 eth0: Register Dump
> > > > [   54.775079] igc 0000:01:00.0 eth0: Register Name   Value
> > > > [   54.782251] igc 0000:01:00.0 eth0: CTRL            081c0641
> > > > [   54.789741] igc 0000:01:00.0 eth0: STATUS          00380681
> > > > [   54.797215] igc 0000:01:00.0 eth0: CTRL_EXT        100000c0
> > > > [   54.804672] igc 0000:01:00.0 eth0: MDIC            18017949
> > > > [   54.812112] igc 0000:01:00.0 eth0: ICR             00000001
> > > > [   54.819562] igc 0000:01:00.0 eth0: RCTL            0440803a
> > > > [   54.827014] igc 0000:01:00.0 eth0: RDLEN[0-3]      00001000
> > > > 00001000 00001000 00001000
> > > > [   54.836977] igc 0000:01:00.0 eth0: RDH[0-3]        00000004
> > > > 00000031 000000bc 00000044
> > > > [   54.846960] igc 0000:01:00.0 eth0: RDT[0-3]        00000003
> > > > 00000030 000000bb 00000043
> > > > [   54.856970] igc 0000:01:00.0 eth0: RXDCTL[0-3]     02040808
> > > > 02040808 02040808 02040808
> > > > [   54.866941] igc 0000:01:00.0 eth0: RDBAL[0-3]      045c1000
> > > > 04485000 04424000 04484000
> > > > [   54.876917] igc 0000:01:00.0 eth0: RDBAH[0-3]      00000001
> > > > 00000001 00000001 00000001
> > > > [   54.886889] igc 0000:01:00.0 eth0: TCTL            a503f0fa
> > > > [   54.894327] igc 0000:01:00.0 eth0: TDBAL[0-3]      04245000
> > > > 045a8000 045eb000 0444e000
> > > > [   54.904304] igc 0000:01:00.0 eth0: TDBAH[0-3]      00000001
> > > > 00000001 00000001 00000001
> > > > [   54.914243] igc 0000:01:00.0 eth0: TDLEN[0-3]      00001000
> > > > 00001000 00001000 00001000
> > > > [   54.924199] igc 0000:01:00.0 eth0: TDH[0-3]        0000000e
> > > > 000000cd 000000ed 00000058
> > > > [   54.934175] igc 0000:01:00.0 eth0: TDT[0-3]        0000000e
> > > > 000000da 000000ed 000000a5
> > > > [   54.944100] igc 0000:01:00.0 eth0: TXDCTL[0-3]     02100108
> > > > 02100108 02100108 02100108
> > > > [   54.954025] igc 0000:01:00.0 eth0: Reset adapter
> > > > [   59.629489] igc 0000:01:00.0 eth0: NIC Link is Up 1000 Mbps Full
> > > > Duplex, Flow Control: RX
> > > > [   59.639966] br-lan: port 1(eth0) entered blocking state
> > > > [   59.647007] br-lan: port 1(eth0) entered forwarding state
> > > > [   65.894810] i915 0000:00:02.0: [drm] Failed to load DMC firmware
> > > > i915/icl_dmc_ver1_09.bin. Disabling runtime power management.
> > > > [   65.908594] i915 0000:00:02.0: [drm] DMC firmware homepage:
> > > > https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-
> firmware.git/tree/i915
> > > > [   66.867303] ------------[ cut here ]------------
> > > > [   66.876821] refcount_t: underflow; use-after-free.
> > > > [   66.885000] WARNING: CPU: 2 PID: 0 at
> refcount_warn_saturate+0xc2/0x110
> > > > [   66.893622] Modules linked in: pppoe ppp_async nft_fib_inet
> > > > nf_flow_table_ipv6 nf_flow_table_ipv4 nf_flow_table_inet pppox
> > > > ppp_generic nft_reject_ipv6 nft_reject_ipv4 nft_reject_inet nft_reject
> > > > nft_redir nft_quota nft_objref nft_numgen nft_nat nft_masq nft_log
> > > > nft_limit nft_hash nft_flow_offload nft_fib_ipv6 nft_fib_ipv4 nft_fib
> > > > nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flow_table
> > > > nf_conntrack lzo slhc r8169 nfnetlink nf_reject_ipv6 nf_reject_ipv4
> > > > nf_log_syslog nf_defrag_ipv6 nf_defrag_ipv4 lzo_rle lzo_decompress
> > > > lzo_compress libcrc32c igc forcedeth e1000e crc_ccitt bnx2 i2c_dev
> > > > ixgbe e1000 amd_xgbe mdio nls_utf8 ena crypto_acompress
> nls_iso8859_1
> > > > nls_cp437 igb vfat fat button_hotplug tg3 ptp realtek pps_core mii
> > > > [   66.967573] CPU: 2 PID: 0 Comm: swapper/2 Not tainted 5.15.98
> #0
> > > > [   66.975705] Hardware name: Default string Default string/Default
> > > > string, BIOS 5.19 09/23/2022
> > > > [   66.986562] RIP: 0010:refcount_warn_saturate+0xc2/0x110
> > > > [   66.993851] Code: 01 e8 39 a2 69 00 0f 0b 5d c3 cc cc cc cc 80 3d
> > > > e9 92 13 01 00 75 81 48 c7 c7 10 45 28 82 c6 05 d9 92 13 01 01 e8
> 15
> > > > a2 69 00 <0f> 0b 5d c3 cc cc cc cc 80 3d c3 92 13 01 00 0f 85 59 ff ff
> > > > ff 48
> > > > [   67.015855] RSP: 0018:ffffc90000158de8 EFLAGS: 00010292
> > > > [   67.023179] RAX: 0000000000000026 RBX: ffff888105008b00 RCX:
> 0000000000000000
> > > > [   67.032612] RDX: ffff88903ff1df20 RSI: ffff88903ff1c580 RDI:
> ffff88903ff1c580
> > > > [   67.042021] RBP: ffffc90000158de8 R08: 0000000000000000 R09:
> ffffc90000158bf0
> > > > [   67.051440] R10: ffffc90000158be8 R11: ffffffff824ae428 R12:
> ffff888101fefb80
> > > > [   67.060871] R13: 00000000ffffff81 R14: ffff88810444e810 R15:
> ffff88810444e830
> > > > [   67.070300] FS:  0000000000000000(0000)
> GS:ffff88903ff00000(0000)
> > > > knlGS:0000000000000000
> > > > [   67.080762] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [   67.088708] CR2: 00007f93a6e1bd9d CR3: 000000000340a000
> CR4: 0000000000350ee0
> > > > [   67.098129] Call Trace:
> > > > [   67.102475]  <IRQ>
> > > > [   67.106859]  napi_consume_skb+0xdd/0x100
> > > > [   67.113246]  igc_down+0xf2c/0x2df0 [igc]
> > > > [   67.119508]  ? load_balance+0x139/0xa90
> > > > [   67.125506]  __napi_poll+0x43/0x130
> > > > [   67.131100]  net_rx_action+0x224/0x290
> > > > [   67.136910]  __do_softirq+0xc2/0x1ff
> > > > [   67.142471]  irq_exit_rcu+0x5e/0x90
> > > > [   67.147882]  common_interrupt+0x8e/0xa0
> > > > [   67.153671]  </IRQ>
> > > > [   67.157581]  <TASK>
> > > > [   67.161459]  asm_common_interrupt+0x27/0x40
> > > > [   67.167654] RIP: 0010:cpuidle_enter_state+0xbb/0x2d0
> > > > [   67.174773] Code: 9f 89 ff 65 8b 3d fd 44 7c 7e e8 70 9e 89 ff 31
> > > > ff 49 89 c6 e8 56 ab 89 ff 80 7d d7 00 0f 85 ab 01 00 00 fb 66 0f 1f
> > > > 44 00 00 <45> 85 ff 0f 88 dc 00 00 00 49 63 cf 4c 8b 55 c8 48 8d 04
> 49
> > > > 48 8d
> > > > [   67.196712] RSP: 0018:ffffc900000efe70 EFLAGS: 00000246
> > > > [   67.204081] RAX: ffff88903ff21b00 RBX: ffff88903ff2b000 RCX:
> 000000000000001f
> > > > [   67.213493] RDX: 0000000f9199ee36 RSI: 0000000046ec0743 RDI:
> 0000000000000000
> > > > [   67.222855] RBP: ffffc900000efea8 R08: 0000000000000000 R09:
> 0000000000000009
> > > > [   67.232270] R10: 0000000f91889923 R11: 0000000000000000
> R12: 0000000000000002
> > > > [   67.241618] R13: ffffffff824cd680 R14: 0000000f9199ee36 R15:
> 0000000000000002
> > > > [   67.250989]  cpuidle_enter+0x2f/0x50
> > > > [   67.256506]  call_cpuidle+0x1e/0x40
> > > > [   67.261906]  do_idle+0x15c/0x180
> > > > [   67.267050]  cpu_startup_entry+0x18/0x20
> > > > [   67.272924]  start_secondary+0xf9/0x110
> > > > [   67.278690]  secondary_startup_64_no_verify+0xb0/0xbb
> > > > [   67.285814]  </TASK>
> > > > [   67.289779] ---[ end trace c9ee4679924ad6e2 ]---
> > > > [   73.307596] ------------[ cut here ]------------
> > > > [   73.317713] Kernel BUG at dql_completed+0x175/0x180 [verbose
> debug
> > > > info unavailable]
> > > > [   73.328905] invalid opcode: 0000 [#1] SMP NOPTI
> > > > [   73.335488] CPU: 2 PID: 0 Comm: swapper/2 Tainted: G        W
> > > >    5.15.98 #0
> > > > [   73.345150] Hardware name: Default string Default string/Default
> > > > string, BIOS 5.19 09/23/2022
> > > > [   73.356034] RIP: 0010:dql_completed+0x175/0x180
> > > > [   73.362604] Code: 95 c2 45 84 d4 75 08 44 89 c2 e9 17 ff ff ff 45
> > > > 85 db 79 f3 01 d2 45 89 c2 41 29 d2 ba 00 00 00 00 44 0f 48 d2 e9 7b
> > > > ff ff ff <0f> 0b cc cc cc cc cc cc cc cc cc 55 49 89 f2 48 89 f8 4d 8d
> > > > 5a 01
> > > > [   73.384660] RSP: 0018:ffffc90000158e10 EFLAGS: 00010283
> > > > [   73.392238] RAX: ffff888102d48c80 RBX: ffffc90000753370 RCX:
> 0000000000000a2a
> > > > [   73.401708] RDX: ffff888102d50000 RSI: 0000000000001014 RDI:
> 000000000015e0a8
> > > > [   73.411167] RBP: ffffc90000158ee8 R08: 0000000000000000 R09:
> 0000000000000100
> > > > [   73.420606] R10: 000000000015d67e R11: 0000000000000000
> R12: ffff888101fefb80
> > > > [   73.430026] R13: 00000000ffffffa2 R14: ffff888102d48bc0 R15:
> 0000000000000000
> > > > [   73.439434] FS:  0000000000000000(0000)
> GS:ffff88903ff00000(0000)
> > > > knlGS:0000000000000000
> > > > [   73.450024] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [   73.457972] CR2: 00007f66eaeed000 CR3: 000000000340a000
> CR4: 0000000000350ee0
> > > > [   73.467426] Call Trace:
> > > > [   73.471837]  <IRQ>
> > > > [   73.475749]  ? igc_down+0xb05/0x2df0 [igc]
> > > > [   73.481925]  __napi_poll+0x43/0x130
> > > > [   73.487442]  net_rx_action+0x224/0x290
> > > > [   73.493226]  __do_softirq+0xc2/0x1ff
> > > > [   73.498812]  irq_exit_rcu+0x5e/0x90
> > > > [   73.504305]  common_interrupt+0x8e/0xa0
> > > > [   73.510203]  </IRQ>
> > > > [   73.514193]  <TASK>
> > > > [   73.518166]  asm_common_interrupt+0x27/0x40
> > > > [   73.524381] RIP: 0010:cpuidle_enter_state+0xbb/0x2d0
> > > > [   73.531502] Code: 9f 89 ff 65 8b 3d fd 44 7c 7e e8 70 9e 89 ff 31
> > > > ff 49 89 c6 e8 56 ab 89 ff 80 7d d7 00 0f 85 ab 01 00 00 fb 66 0f 1f
> > > > 44 00 00 <45> 85 ff 0f 88 dc 00 00 00 49 63 cf 4c 8b 55 c8 48 8d 04
> 49
> > > > 48 8d
> > > > [   73.553573] RSP: 0018:ffffc900000efe70 EFLAGS: 00000246
> > > > [   73.561040] RAX: ffff88903ff21b00 RBX: ffff88903ff2b000 RCX:
> 000000000000001f
> > > > [   73.570568] RDX: 0000001111777ffd RSI: 0000000046ec0743 RDI:
> 0000000000000000
> > > > [   73.580133] RBP: ffffc900000efea8 R08: 0000000000000000 R09:
> ffff888100c13200
> > > > [   73.589705] R10: 0000001111741bf8 R11: 0000000000000008
> R12: 0000000000000003
> > > > [   73.599200] R13: ffffffff824cd680 R14: 0000001111777ffd R15:
> 0000000000000003
> > > > [   73.608723]  cpuidle_enter+0x2f/0x50
> > > > [   73.614394]  call_cpuidle+0x1e/0x40
> > > > [   73.619994]  do_idle+0x15c/0x180
> > > > [   73.625265]  cpu_startup_entry+0x18/0x20
> > > > [   73.631425]  start_secondary+0xf9/0x110
> > > > [   73.637320]  secondary_startup_64_no_verify+0xb0/0xbb
> > > > [   73.644584]  </TASK>
> > > > [   73.648664] Modules linked in: pppoe ppp_async nft_fib_inet
> > > > nf_flow_table_ipv6 nf_flow_table_ipv4 nf_flow_table_inet pppox
> > > > ppp_generic nft_reject_ipv6 nft_reject_ipv4 nft_reject_inet nft_reject
> > > > nft_redir nft_quota nft_objref nft_numgen nft_nat nft_masq nft_log
> > > > nft_limit nft_hash nft_flow_offload nft_fib_ipv6 nft_fib_ipv4 nft_fib
> > > > nft_ct nft_counter nft_chain_nat nf_tables nf_nat nf_flow_table
> > > > nf_conntrack lzo slhc r8169 nfnetlink nf_reject_ipv6 nf_reject_ipv4
> > > > nf_log_syslog nf_defrag_ipv6 nf_defrag_ipv4 lzo_rle lzo_decompress
> > > > lzo_compress libcrc32c igc forcedeth e1000e crc_ccitt bnx2 i2c_dev
> > > > ixgbe e1000 amd_xgbe mdio nls_utf8 ena crypto_acompress
> nls_iso8859_1
> > > > nls_cp437 igb vfat fat button_hotplug tg3 ptp realtek pps_core mii
> > > > [   73.723618] ---[ end trace c9ee4679924ad6e3 ]---
> > > > [   73.730427] RIP: 0010:dql_completed+0x175/0x180
> > > > [   73.737086] Code: 95 c2 45 84 d4 75 08 44 89 c2 e9 17 ff ff ff 45
> > > > 85 db 79 f3 01 d2 45 89 c2 41 29 d2 ba 00 00 00 00 44 0f 48 d2 e9 7b
> > > > ff ff ff <0f> 0b cc cc cc cc cc cc cc cc cc 55 49 89 f2 48 89 f8 4d 8d
> > > > 5a 01
> > > > [   73.759178] RSP: 0018:ffffc90000158e10 EFLAGS: 00010283
> > > > [   73.766611] RAX: ffff888102d48c80 RBX: ffffc90000753370 RCX:
> 0000000000000a2a
> > > > [   73.776135] RDX: ffff888102d50000 RSI: 0000000000001014 RDI:
> 000000000015e0a8
> > > > [   73.785548] RBP: ffffc90000158ee8 R08: 0000000000000000 R09:
> 0000000000000100
> > > > [   73.794970] R10: 000000000015d67e R11: 0000000000000000
> R12: ffff888101fefb80
> > > > [   73.804368] R13: 00000000ffffffa2 R14: ffff888102d48bc0 R15:
> 0000000000000000
> > > > [   73.813801] FS:  0000000000000000(0000)
> GS:ffff88903ff00000(0000)
> > > > knlGS:0000000000000000
> > > > [   73.824227] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > > > [   73.832137] CR2: 00007f66eaeed000 CR3: 000000000340a000
> CR4: 0000000000350ee0
> > > > [   73.841581] Kernel panic - not syncing: Fatal exception in interrupt
> > > > [   73.850251] Kernel Offset: disabled
> > > > [   73.855836] Rebooting in 3 seconds..
> > > >
> > > >
> > > > On Mon, Feb 6, 2023 at 11:23?PM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> > > >>
> > > >> hi Intel IGC Maintainers,
> > > >>
> > > >> Is there any update on this? Can I help test a patch?
> > > >>
> > > >> Kyle.
> > > >>
> > > >> On Sun, Jan 15, 2023 at 1:13 AM Ruinskiy, Dima
> <dima.ruinskiy@intel.com> wrote:
> > > >>>
> > > >>> On 13/01/2023 22:33, Kyle Sanderson wrote:
> > > >>>>> On Wednesday, January 11, 2023, Ruinskiy, Dima
> <dima.ruinskiy@intel.com> wrote:
> > > >>>>> We are going to try to get a reliable reproduction internally,
> based on the instructions provided, to simplify triage and debug.
> > > >>>>
> > > >>>> Understood, thank you Dima.
> > > >>>>
> > > >>>>> Could you share the exact model of the retail appliance you are
> using, just in case I can locate someone here with a similar device?
> > > >>>>
> > > >>>> https://www.servethehome.com/intel-celeron-j6413-powered-6x-
> i226-2-5gbe-fanless-firewall-review/
> > > >>>>
> > > >>>> These boxes (like the protectli) boxes all ship with BSD. I know the
> > > >>>> IPS cases are private - were you able to connect with the group
> > > >>>> working on that? (Sureshkumar cc'd was in the to: field.)
> > > >>>>
> > > >>>> Kyle.
> > > >>>
> > > >>> We are indeed working with Sureshkumar.
> > > >>>
> > > >>> Thank you for sharing the box details. I hope we can achieve quality
> > > >>> debug with the existing platforms we have in house, but it is always
> > > >>> good to know what else is out there. :)
> > > >>>
> > > >>> --Dima
> > > >>>
> > > >>>>
> > > >>>> On Wednesday, January 11, 2023, Ruinskiy, Dima
> <dima.ruinskiy@intel.com> wrote:
> > > >>>>> Hey Kyle,
> > > >>>>>
> > > >>>>> We are going to try to get a reliable reproduction internally,
> based on the instructions provided, to simplify triage and debug.
> > > >>>>>
> > > >>>>> Could you share the exact model of the retail appliance you are
> using, just in case I can locate someone here with a similar device?
> > > >>>>>
> > > >>>>> Thanks,
> > > >>>>> Dima.
> > > >>>>>
> > > >>>>> On 04/01/2023 7:23, Kyle Sanderson wrote:
> > > >>>>>>
> > > >>>>>> hi Intel IGC Maintainers,
> > > >>>>>>
> > > >>>>>> I know a very kind gentleman from a large networking vendor
> reached
> > > >>>>>> out last week to a group on here saying they're seeing
> something
> > > >>>>>> eerily similar to this failure (and that they have an IPS case
> open).
> > > >>>>>>
> > > >>>>>> Is there any additional information that you're looking for that I
> can
> > > >>>>>> help with? One of my colleagues just had his UFS install corrupt
> > > >>>>>> itself, so having non-panic'ing Linux support is still very much-
> so
> > > >>>>>> desired.
> > > >>>>>>
> > > >>>>>> Kyle.
> > > >>>>>>
> > > >>>>>> On Thu, Dec 29, 2022 at 4:49 PM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> > > >>>>>>>
> > > >>>>>>> On Thu, Dec 29, 2022 at 1:21 AM MP, Sureshkumar
> > > >>>>>>> <sureshkumar.mp@intel.com> wrote:
> > > >>>>>>>>
> > > >>>>>>>> 1. Can you share the HW and SW BKC used to do this
> experiment?
> > > >>>>>>>
> > > >>>>>>> This is a retail appliance. They ship with FBSD out of the box
> > > >>>>>>> (OPNsense / pfSense), or a Windows OS. I'm hoping we can fix
> Linux
> > > >>>>>>> support for these.
> > > >>>>>>> The NICs are embedded on the board, as to the bus they're
> using it's
> > > >>>>>>> beyond me as an end consumer (basically an stb with a
> console port).
> > > >>>>>>>
> > > >>>>>>>> 2. How about this test results with i225 AIC on these
> kernels?
> > > >>>>>>>
> > > >>>>>>> I don't have this controller, but now that we know the steps to
> > > >>>>>>> reproduce (enable IP Forwarding and send traffic until
> buffering
> > > >>>>>>> happens) it should be reproducible by anyone.
> > > >>>>>>>
> > > >>>>>>>> 3. Did you test this with kernel.org igc driver code on these
> kernels? If yes, share the results.
> > > >>>>>>>
> > > >>>>>>> Yes. Kernel panic'd (from the BUG_ON) on 5.10, 5.15, and 6.0.
> > > >>>>>>>
> > > >>>>>>>> 4. How did you connect 6x i226 AICs in the EHL board?
> > > >>>>>>>
> > > >>>>>>> Port 1 and Port 6. Using the ports independently doesn't seem
> to
> > > >>>>>>> reproduce the issue, and is only when traffic is forwarded
> between
> > > >>>>>>> them.
> > > >>>>>>>
> > > >>>>>>>> 5. Did you test with 1x i226 AIC on these kernels in EHL
> board?
> > > >>>>>>>
> > > >>>>>>> Yes, the problem does not persist. 2 NICs need to be used (on
> igc),
> > > >>>>>>> with traffic passing between them.
> > > >>>>>>>
> > > >>>>>>> K.
> > > >>>>>>>
> > > >>>>>>> On Thu, Dec 29, 2022 at 1:21 AM MP, Sureshkumar
> > > >>>>>>> <sureshkumar.mp@intel.com> wrote:
> > > >>>>>>>>
> > > >>>>>>>> Ok K.
> > > >>>>>>>>
> > > >>>>>>>> 1. Can you share the HW and SW BKC used to do this
> experiment?
> > > >>>>>>>> 2. How about this test results with i225 AIC on these
> kernels?
> > > >>>>>>>> 3. Did you test this with kernel.org igc driver code on these
> kernels? If yes, share the results.
> > > >>>>>>>> 4. How did you connect 6x i226 AICs in the EHL board?
> > > >>>>>>>> 5. Did you test with 1x i226 AIC on these kernels in EHL
> board?
> > > >>>>>>>>
> > > >>>>>>>> Best Regards,
> > > >>>>>>>> Sureshkumar
> > > >>>>>>>>
> > > >>>>>>>> -----Original Message-----
> > > >>>>>>>> From: Kyle Sanderson <kyle.leet@gmail.com>
> > > >>>>>>>> Sent: Thursday, December 29, 2022 9:58 AM
> > > >>>>>>>> To: MP, Sureshkumar <sureshkumar.mp@intel.com>
> > > >>>>>>>> Cc: Neftin, Sasha <sasha.neftin@intel.com>; intel-wired-
> lan@lists.osuosl.org; Ruinskiy, Dima <dima.ruinskiy@intel.com>; Avivi,
> Amir <amir.avivi@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Linux-Kernel <linux-
> kernel@vger.kernel.org>; Torvalds, Linus <torvalds@linux-foundation.org>;
> netdev@vger.kernel.org; Lifshits, Vitaly <vitaly.lifshits@intel.com>;
> naamax.meir <naamax.meir@linux.intel.com>; Greg KH
> <gregkh@linuxfoundation.org>
> > > >>>>>>>> Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at
> 0xffffffff813ce19f
> > > >>>>>>>>
> > > >>>>>>>> On Wed, Dec 28, 2022 at 8:12 PM MP, Sureshkumar
> <sureshkumar.mp@intel.com> wrote:
> > > >>>>>>>>>
> > > >>>>>>>>> Not getting the exact issue here. Can someone explain what
> is the issue with i226 in EHL platform?
> > > >>>>>>>>>
> > > >>>>>>>>> Best Regards,
> > > >>>>>>>>> Sureshkumar
> > > >>>>>>>>
> > > >>>>>>>> hi Sureshkumar,
> > > >>>>>>>>
> > > >>>>>>>> If you forward traffic on an igc kmod NIC the kernel will panic
> with the call traces provided from the three different kernel versions.
> > > >>>>>>>> This happens when there's traffic passing through the nic,
> and the cable is removed. When the cable is returned to the device, the
> panic occurs. Each controller (as far as I'm aware) is exposed as a standalone
> device.
> > > >>>>>>>>
> > > >>>>>>>> This has never worked on 5.10, 5.15, or 6.0 kernels. There is
> no device support on 5.4, so I can't test that far back unfortunately. We also
> don't know if it's exclusive to this phy, or if it's impacting other devices
> using the kmod.
> > > >>>>>>>>
> > > >>>>>>>> K.
> > > >>>>>>>>
> > > >>>>>>>> On Wed, Dec 28, 2022 at 8:12 PM MP, Sureshkumar
> <sureshkumar.mp@intel.com> wrote:
> > > >>>>>>>>>
> > > >>>>>>>>> Not getting the exact issue here. Can someone explain what
> is the issue with i226 in EHL platform?
> > > >>>>>>>>>
> > > >>>>>>>>> Best Regards,
> > > >>>>>>>>> Sureshkumar
> > > >>>>>>>>>
> > > >>>>>>>>> -----Original Message-----
> > > >>>>>>>>> From: Kyle Sanderson <kyle.leet@gmail.com>
> > > >>>>>>>>> Sent: Thursday, December 29, 2022 8:18 AM
> > > >>>>>>>>> To: Neftin, Sasha <sasha.neftin@intel.com>;
> > > >>>>>>>>> intel-wired-lan@lists.osuosl.org; Ruinskiy, Dima
> > > >>>>>>>>> <dima.ruinskiy@intel.com>; Avivi, Amir
> <amir.avivi@intel.com>
> > > >>>>>>>>> Cc: Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> Nguyen, Anthony L
> > > >>>>>>>>> <anthony.l.nguyen@intel.com>; MP, Sureshkumar
> > > >>>>>>>>> <sureshkumar.mp@intel.com>; Linux-Kernel
> > > >>>>>>>>> <linux-kernel@vger.kernel.org>; Torvalds, Linus
> > > >>>>>>>>> <torvalds@linux-foundation.org>; netdev@vger.kernel.org;
> Lifshits,
> > > >>>>>>>>> Vitaly <vitaly.lifshits@intel.com>; naamax.meir
> > > >>>>>>>>> <naamax.meir@linux.intel.com>; Greg KH
> <gregkh@linuxfoundation.org>;
> > > >>>>>>>>> therbert@google.com
> > > >>>>>>>>> Subject: Re: [Intel-wired-lan] igc: 5.10.146 Kernel BUG at
> > > >>>>>>>>> 0xffffffff813ce19f
> > > >>>>>>>>>
> > > >>>>>>>>> On Wed, Dec 28, 2022 at 2:34 PM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> > > >>>>>>>>>>
> > > >>>>>>>>>> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha
> <sasha.neftin@intel.com> wrote:
> > > >>>>>>>>>>>
> > > >>>>>>>>>>> 1. Does the problem reproduce on the latest upstream
> kernel?(worth
> > > >>>>>>>>>>> to check)
> > > >>>>>>>>>>
> > > >>>>>>>>>> The box is a bit problematic to try things on (it's all done
> through
> > > >>>>>>>>>> the COM port).
> > > >>>>>>>>>> Will try spinning an image for retail and seeing if it
> continues (I
> > > >>>>>>>>>> did go back and look at the commits, post 5.15 the diffs
> looked like
> > > >>>>>>>>>> cleanups).
> > > >>>>>>>>>
> > > >>>>>>>>> Yes, this is reproducible on 6.0.7. What I noticed though is,
> when the device is operating in client mode (Fedora), I cannot reproduce
> the panic.
> > > >>>>>>>>>
> > > >>>>>>>>> The only way I was able to reproduce the panic was
> forwarding traffic from another device, which was confirmed by turning on
> IP forwarding and passing traffic from another asset (using the same
> fast.com test, this time on Fedora). Which means (I believe), this should be
> reproducible on Dual / Quad port NICs using igc as long as they're routing
> traffic through the same card.
> > > >>>>>>>>>
> > > >>>>>>>>> Based on the relatively recent availability of the phy, and
> most
> > > >>>>>>>>> (noted) consumers using this single port onboard from a
> OEM it would be more difficult to encounter in the wild.
> > > >>>>>>>>>
> > > >>>>>>>>> Thank you very much for your help so far.
> > > >>>>>>>>>
> > > >>>>>>>>> K.
> > > >>>>>>>>>
> > > >>>>>>>>> On Wed, Dec 28, 2022 at 2:34 PM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> > > >>>>>>>>>>
> > > >>>>>>>>>> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha
> <sasha.neftin@intel.com> wrote:
> > > >>>>>>>>>>>
> > > >>>>>>>>>>> I do not know if it is an SW problem.
> > > >>>>>>>>>>
> > > >>>>>>>>>> I'm not experiencing the same failure on FBSD, so it's quite
> likely
> > > >>>>>>>>>> software (somewhere :-)).
> > > >>>>>>>>>>
> > > >>>>>>>>>>> 1. Does the problem reproduce on the latest upstream
> kernel?(worth
> > > >>>>>>>>>>> to check)
> > > >>>>>>>>>>
> > > >>>>>>>>>> The box is a bit problematic to try things on (it's all done
> through
> > > >>>>>>>>>> the COM port).
> > > >>>>>>>>>> Will try spinning an image for retail and seeing if it
> continues (I
> > > >>>>>>>>>> did go back and look at the commits, post 5.15 the diffs
> looked like
> > > >>>>>>>>>> cleanups).
> > > >>>>>>>>>>
> > > >>>>>>>>>>> 2. I do not see this crash in our labs. I haven't a platform
> with
> > > >>>>>>>>>>> six
> > > >>>>>>>>>>> i226 parts.(Trying find folks who work with this
> platform.)
> > > >>>>>>>>>>
> > > >>>>>>>>>> I'm not sure this (port count) is related. How I'm
> reproducing the
> > > >>>>>>>>>> issue now is simply going to fast.com on a client with
> aggressive
> > > >>>>>>>>>> settings (20cons minimum, 90s test duration), waiting
> until it
> > > >>>>>>>>>> starts to buffer (latency increases, so packets are being
> deferred /
> > > >>>>>>>>>> scheduled) then removing the ethernet cable from the
> laptop. The
> > > >>>>>>>>>> device seems to operate indefinitely in this mode, and
> only when the
> > > >>>>>>>>>> link comes back up, and traffic is sent again, do these
> kernels panic.
> > > >>>>>>>>>> It doesn't seem to matter how long the cable is
> disconnected for
> > > >>>>>>>>>> (another trace below where I did it for 30s). If the resets
> are fast
> > > >>>>>>>>>> enough, the failure seemed less likely to occur.
> > > >>>>>>>>>>
> > > >>>>>>>>>>> 3. I am working on a patch to address .ndo_tx_timeout
> support.
> > > >>>>>>>>>>> (pass the reset task to netdev while the link disconnected
> during
> > > >>>>>>>>>>> traffic, under testing). It could be related and worth
> checking -
> > > >>>>>>>>>>> please, let me know if you want to apply on your
> platform (against upstream).
> > > >>>>>>>>>>> Reach us (Dima, Amir, and me) directly off the list.
> > > >>>>>>>>>>
> > > >>>>>>>>>> Will try pending outcome on #1, If you can target the
> latest stable
> > > >>>>>>>>>> RC that you're aware of that would be appreciated.
> > > >>>>>>>>>>
> > > >>>>>>>>>> [   62.209563] igc 0000:01:00.0 eth0: Reset adapter
> > > >>>>>>>>>> [   89.560331] kernel BUG at
> lib/dynamic_queue_limits.c:27!
> > > >>>>>>>>>> [   89.567779] invalid opcode: 0000 [#1] SMP NOPTI
> > > >>>>>>>>>> [   89.573229] CPU: 3 PID: 0 Comm: swapper/3 Not
> tainted 5.15.85-amd64-vyos #1
> > > >>>>>>>>>> [   89.579989] ------------[ cut here ]------------
> > > >>>>>>>>>> [   89.581328] Hardware name: Default string Default
> string/Default
> > > >>>>>>>>>> string, BIOS 5.19 09/23/2022
> > > >>>>>>>>>> [   89.581329] RIP: 0010:dql_completed+0x12f/0x140
> > > >>>>>>>>>> [   89.586873] kernel BUG at
> lib/dynamic_queue_limits.c:27!
> > > >>>>>>>>>> [   89.596627] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85
> ed 40 0f
> > > >>>>>>>>>> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44
> 89 d8 e9 36
> > > >>>>>>>>>> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc
> 41 56
> > > >>>>>>>>>> 49
> > > >>>>>>>>>> 89 f3
> > > >>>>>>>>>> [   89.596630] RSP: 0018:ffffb3324018ce20 EFLAGS:
> 00010283
> > > >>>>>>>>>> [   89.636568] RAX: 0000000000000003 RBX:
> ffff97640754eb40 RCX: 0000000000000036
> > > >>>>>>>>>> [   89.644842] RDX: ffff976407704000 RSI:
> 0000000000000620 RDI: ffff976407708c80
> > > >>>>>>>>>> [   89.653108] RBP: 0000000000000000 R08:
> 000000000000a1f0 R09: da49cae6d4ba44ce
> > > >>>>>>>>>> [   89.661379] R10: 000000000000a226 R11:
> ffffffffa05fee80 R12: 0000000000000620
> > > >>>>>>>>>> [   89.669657] R13: ffff97640754eb40 R14:
> ffffb33240cf9540 R15: 00000000ffffff18
> > > >>>>>>>>>> [   89.677942] FS:  0000000000000000(0000)
> GS:ffff97733ff80000(0000)
> > > >>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>> [   89.687275] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> > > >>>>>>>>>> [   89.694065] CR2: 00007f6c7c9e9b40 CR3:
> 000000064f610000 CR4: 0000000000350ee0
> > > >>>>>>>>>> [   89.702353] Call Trace:
> > > >>>>>>>>>> [   89.705549]  <IRQ>
> > > >>>>>>>>>> [   89.708269]  igc_poll+0x19d/0x14b0 [igc]
> > > >>>>>>>>>> [   89.713073]  ? __ip_finish_output+0xc0/0x1a0
> > > >>>>>>>>>> [   89.718255]  ?
> __netif_receive_skb_one_core+0x86/0xa0
> > > >>>>>>>>>> [   89.724269]  __napi_poll+0x22/0x110
> > > >>>>>>>>>> [   89.728597]  net_rx_action+0xe9/0x250
> > > >>>>>>>>>> [   89.733093]  ? igc_msix_ring+0x51/0x60 [igc]
> > > >>>>>>>>>> [   89.738230]  __do_softirq+0xb8/0x1e9
> > > >>>>>>>>>> [   89.742616]  irq_exit_rcu+0x84/0xb0
> > > >>>>>>>>>> [   89.746915]  common_interrupt+0x78/0x90
> > > >>>>>>>>>> [   89.751566]  </IRQ>
> > > >>>>>>>>>> [   89.754323]  <TASK>
> > > >>>>>>>>>> [   89.757070]  asm_common_interrupt+0x22/0x40
> > > >>>>>>>>>> [   89.762066] RIP: 0010:cpuidle_enter_state+0xb5/0x2a0
> > > >>>>>>>>>> [   89.767931] Code: c1 48 b2 ff 65 8b 3d b2 58 a9 60 e8
> 65 47 b2 ff
> > > >>>>>>>>>> 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00 fb
> 66 0f 1f
> > > >>>>>>>>>> 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b 2c
> 24 48 8d 14
> > > >>>>>>>>>> 40
> > > >>>>>>>>>> 48 8d
> > > >>>>>>>>>> [   89.789731] RSP: 0018:ffffb332400ffea8 EFLAGS:
> 00000246
> > > >>>>>>>>>> [   89.795904] RAX: ffff97733ffa3440 RBX:
> 0000000000000003 RCX: 000000000000001f
> > > >>>>>>>>>> [   89.804138] RDX: 0000000000000000 RSI:
> 0000000046ec0743 RDI: 0000000000000000
> > > >>>>>>>>>> [   89.812376] RBP: ffff97733ffac910 R08:
> 00000014da35607b R09: 00000014bbdae179
> > > >>>>>>>>>> [   89.820594] R10: 00000000000000e2 R11:
> 000000000000357c R12: ffffffffa00ccb40
> > > >>>>>>>>>> [   89.828795] R13: 00000014da35607b R14:
> 0000000000000000 R15: 0000000000000003
> > > >>>>>>>>>> [   89.837026]  ? cpuidle_enter_state+0xa5/0x2a0
> > > >>>>>>>>>> [   89.842226]  cpuidle_enter+0x24/0x40
> > > >>>>>>>>>> [   89.846558]  do_idle+0x1e4/0x280
> > > >>>>>>>>>> [   89.850516]  cpu_startup_entry+0x14/0x20
> > > >>>>>>>>>> [   89.855223]
> secondary_startup_64_no_verify+0xb0/0xbb
> > > >>>>>>>>>> [   89.861153]  </TASK>
> > > >>>>>>>>>> [   89.863953] Modules linked in: wireguard
> curve25519_x86_64
> > > >>>>>>>>>> libcurve25519_generic libchacha20poly1305
> chacha_x86_64
> > > >>>>>>>>>> poly1305_x86_64 ip6_udp_tunnel udp_tunnel libchacha
> vrf nft_masq
> > > >>>>>>>>>> nf_nat_tftp nf_conntrack_tftp nf_nat_sip
> nf_conntrack_sip
> > > >>>>>>>>>> nf_nat_pptp nf_conntrack_pptp nf_nat_h323
> nf_conntrack_h323
> > > >>>>>>>>>> nf_nat_ftp nf_conntrack_ftp nft_objref nft_counter nft_ct
> > > >>>>>>>>>> nft_chain_nat nf_nat nf_tables nfnetlink_cthelper
> nf_conntrack
> > > >>>>>>>>>> nf_defrag_ipv6
> > > >>>>>>>>>> nf_defrag_ipv4 libcrc32c nfnetlink af_packet
> x86_pkg_temp_thermal
> > > >>>>>>>>>> intel_powerclamp coretemp crct10dif_pclmul
> crc32_pclmul
> > > >>>>>>>>>> ghash_clmulni_intel aesni_intel crypto_simd cryptd
> intel_cstate
> > > >>>>>>>>>> iTCO_wdt evdev mei_me pcspkr efi_pstore
> iTCO_vendor_support mei sg
> > > >>>>>>>>>> tpm_crb tpm_tis tpm_tis_core tpm rng_core button
> acpi_pad
> > > >>>>>>>>>> mpls_iptunnel mpls_router ip_tunnel br_netfilter bridge
> stp llc fuse
> > > >>>>>>>>>> configfs efivarfs ip_tables x_tables autofs4 usb_storage
> ohci_hcd
> > > >>>>>>>>>> uhci_hcd ehci_hcd squashfs zstd_decompress
> lz4_decompress loop
> > > >>>>>>>>>> overlay
> > > >>>>>>>>>> ext4 crc32c_generic crc16 mbcache jbd2 nls_cp437
> > > >>>>>>>>>> [   89.864000]  vfat fat efivars nls_ascii hid_generic usbhid
> hid
> > > >>>>>>>>>> sd_mod t10_pi xhci_pci ahci libahci libata crc32c_intel
> i2c_i801
> > > >>>>>>>>>> i2c_smbus scsi_mod igc xhci_hcd scsi_common thermal
> fan
> > > >>>>>>>>>> [   89.982932] invalid opcode: 0000 [#2] SMP NOPTI
> > > >>>>>>>>>> [   89.982934] ---[ end trace b0c0da59c18b279b ]---
> > > >>>>>>>>>> [   89.988461] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G
> D
> > > >>>>>>>>>>      5.15.85-amd64-vyos #1
> > > >>>>>>>>>> [   90.031995] Hardware name: Default string Default
> string/Default
> > > >>>>>>>>>> string, BIOS 5.19 09/23/2022
> > > >>>>>>>>>> [   90.079903] RIP: 0010:dql_completed+0x12f/0x140
> > > >>>>>>>>>> [   90.099780] RIP: 0010:dql_completed+0x12f/0x140
> > > >>>>>>>>>> [   90.101151] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85
> ed 40 0f
> > > >>>>>>>>>> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44
> 89 d8 e9 36
> > > >>>>>>>>>> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc
> 41 56
> > > >>>>>>>>>> 49
> > > >>>>>>>>>> 89 f3
> > > >>>>>>>>>> [   90.106717] Code: cf c9 00 48 89 57 58 e9 54 ff ff ff 85
> ed 40 0f
> > > >>>>>>>>>> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a 44
> 89 d8 e9 36
> > > >>>>>>>>>> ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc cc cc
> 41 56
> > > >>>>>>>>>> 49
> > > >>>>>>>>>> 89 f3
> > > >>>>>>>>>> [   90.129020] RSP: 0018:ffffb33240003e20 EFLAGS:
> 00010293
> > > >>>>>>>>>> [   90.151344] RSP: 0018:ffffb3324018ce20 EFLAGS:
> 00010283
> > > >>>>>>>>>> [   90.157686] RAX: 0000000000000000 RBX:
> ffff97640754bb40 RCX: 0000000000000bd4
> > > >>>>>>>>>> [   90.157686]
> > > >>>>>>>>>> [   90.157687] RDX: ffff976407704000 RSI:
> 0000000000002966 RDI: ffff9764077088c0
> > > >>>>>>>>>> [   90.164026] RAX: 0000000000000003 RBX:
> ffff97640754eb40 RCX: 0000000000000036
> > > >>>>>>>>>> [   90.172433] RBP: 0000000000000000 R08:
> 000000000002bdba R09: 0000000000000000
> > > >>>>>>>>>> [   90.174719] RDX: ffff976407704000 RSI:
> 0000000000000620 RDI: ffff976407708c80
> > > >>>>>>>>>> [   90.183146] R10: 000000000002c98e R11:
> ffffffffa05fee80 R12: 0000000000002966
> > > >>>>>>>>>> [   90.191560] RBP: 0000000000000000 R08:
> 000000000000a1f0 R09: da49cae6d4ba44ce
> > > >>>>>>>>>> [   90.199977] R13: ffff97640754bb40 R14:
> ffffb3324087d4c0 R15: 00000000ffffffa8
> > > >>>>>>>>>> [   90.208382] R10: 000000000000a226 R11:
> ffffffffa05fee80 R12: 0000000000000620
> > > >>>>>>>>>> [   90.216792] FS:  0000000000000000(0000)
> GS:ffff97733fe00000(0000)
> > > >>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>> [   90.225213] R13: ffff97640754eb40 R14:
> ffffb33240cf9540 R15: 00000000ffffff18
> > > >>>>>>>>>> [   90.233641] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> > > >>>>>>>>>> [   90.242058] FS:  0000000000000000(0000)
> GS:ffff97733ff80000(0000)
> > > >>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>> [   90.251492] CR2: 00007f6097a90010 CR3:
> 0000000101468000 CR4: 0000000000350ef0
> > > >>>>>>>>>> [   90.259887] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> > > >>>>>>>>>> [   90.266776] Call Trace:
> > > >>>>>>>>>> [   90.276193] CR2: 00007f6c7c9e9b40 CR3:
> 0000000104378000 CR4: 0000000000350ee0
> > > >>>>>>>>>> [   90.284596]  <IRQ>
> > > >>>>>>>>>> [   90.284597]  igc_poll+0x19d/0x14b0 [igc]
> > > >>>>>>>>>> [   90.291475] Kernel panic - not syncing: Fatal exception
> in interrupt
> > > >>>>>>>>>> [   90.294754]  __napi_poll+0x22/0x110
> > > >>>>>>>>>> [   90.322584]  net_rx_action+0xe9/0x250
> > > >>>>>>>>>> [   90.327118]  ? igc_msix_ring+0x51/0x60 [igc]
> > > >>>>>>>>>> [   90.332311]  __do_softirq+0xb8/0x1e9
> > > >>>>>>>>>> [   90.336716]  irq_exit_rcu+0x84/0xb0
> > > >>>>>>>>>> [   90.341031]  common_interrupt+0x78/0x90
> > > >>>>>>>>>> [   90.345725]  </IRQ>
> > > >>>>>>>>>> [   90.348534]  <TASK>
> > > >>>>>>>>>> [   90.351325]  asm_common_interrupt+0x22/0x40
> > > >>>>>>>>>> [   90.356365] RIP: 0010:cpuidle_enter_state+0xb5/0x2a0
> > > >>>>>>>>>> [   90.362239] Code: c1 48 b2 ff 65 8b 3d b2 58 a9 60 e8
> 65 47 b2 ff
> > > >>>>>>>>>> 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00 fb
> 66 0f 1f
> > > >>>>>>>>>> 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b 2c
> 24 48 8d 14
> > > >>>>>>>>>> 40
> > > >>>>>>>>>> 48 8d
> > > >>>>>>>>>> [   90.384058] RSP: 0018:ffffffffa0003e60 EFLAGS:
> 00000246
> > > >>>>>>>>>> [   90.390221] RAX: ffff97733fe23440 RBX:
> 0000000000000001 RCX: 000000000000001f
> > > >>>>>>>>>> [   90.398453] RDX: 0000000000000000 RSI:
> 0000000046ec0743 RDI: 0000000000000000
> > > >>>>>>>>>> [   90.406695] RBP: ffff97733fe2c910 R08:
> 00000014db620c58 R09: 0000000000000018
> > > >>>>>>>>>> [   90.414928] R10: 0000000000000259 R11:
> 00000000000000da R12: ffffffffa00ccb40
> > > >>>>>>>>>> [   90.423151] R13: 00000014db620c58 R14:
> 0000000000000000 R15: 0000000000000001
> > > >>>>>>>>>> [   90.431387]  cpuidle_enter+0x24/0x40
> > > >>>>>>>>>> [   90.435751]  do_idle+0x1e4/0x280
> > > >>>>>>>>>> [   90.439733]  cpu_startup_entry+0x14/0x20
> > > >>>>>>>>>> [   90.444462]  start_kernel+0x627/0x650
> > > >>>>>>>>>> [   90.448909]
> secondary_startup_64_no_verify+0xb0/0xbb
> > > >>>>>>>>>> [   90.454863]  </TASK>
> > > >>>>>>>>>> [   90.457714] Modules linked in: wireguard
> curve25519_x86_64
> > > >>>>>>>>>> libcurve25519_generic libchacha20poly1305
> chacha_x86_64
> > > >>>>>>>>>> poly1305_x86_64 ip6_udp_tunnel udp_tunnel libchacha
> vrf nft_masq
> > > >>>>>>>>>> nf_nat_tftp nf_conntrack_tftp nf_nat_sip
> nf_conntrack_sip
> > > >>>>>>>>>> nf_nat_pptp nf_conntrack_pptp nf_nat_h323
> nf_conntrack_h323
> > > >>>>>>>>>> nf_nat_ftp nf_conntrack_ftp nft_objref nft_counter nft_ct
> > > >>>>>>>>>> nft_chain_nat nf_nat nf_tables nfnetlink_cthelper
> nf_conntrack
> > > >>>>>>>>>> nf_defrag_ipv6
> > > >>>>>>>>>> nf_defrag_ipv4 libcrc32c nfnetlink af_packet
> x86_pkg_temp_thermal
> > > >>>>>>>>>> intel_powerclamp coretemp crct10dif_pclmul
> crc32_pclmul
> > > >>>>>>>>>> ghash_clmulni_intel aesni_intel crypto_simd cryptd
> intel_cstate
> > > >>>>>>>>>> iTCO_wdt evdev mei_me pcspkr efi_pstore
> iTCO_vendor_support mei sg
> > > >>>>>>>>>> tpm_crb tpm_tis tpm_tis_core tpm rng_core button
> acpi_pad
> > > >>>>>>>>>> mpls_iptunnel mpls_router ip_tunnel br_netfilter bridge
> stp llc fuse
> > > >>>>>>>>>> configfs efivarfs ip_tables x_tables autofs4 usb_storage
> ohci_hcd
> > > >>>>>>>>>> uhci_hcd ehci_hcd squashfs zstd_decompress
> lz4_decompress loop
> > > >>>>>>>>>> overlay
> > > >>>>>>>>>> ext4 crc32c_generic crc16 mbcache jbd2 nls_cp437
> > > >>>>>>>>>> [   90.457755]  vfat fat efivars nls_ascii hid_generic usbhid
> hid
> > > >>>>>>>>>> sd_mod t10_pi xhci_pci ahci libahci libata crc32c_intel
> i2c_i801
> > > >>>>>>>>>> i2c_smbus scsi_mod igc xhci_hcd scsi_common thermal
> fan
> > > >>>>>>>>>> [   90.576795] Kernel Offset: 0x1e000000 from
> 0xffffffff81000000
> > > >>>>>>>>>> (relocation range: 0xffffffff80000000-0xffffffffbfffffff)
> > > >>>>>>>>>> [   90.704454] ---[ end Kernel panic - not syncing: Fatal
> exception in
> > > >>>>>>>>>> interrupt ]---
> > > >>>>>>>>>>
> > > >>>>>>>>>> K.
> > > >>>>>>>>>>
> > > >>>>>>>>>> On Tue, Dec 27, 2022 at 11:07 PM Neftin, Sasha
> <sasha.neftin@intel.com> wrote:
> > > >>>>>>>>>>>
> > > >>>>>>>>>>> On 12/28/2022 06:45, Kyle Sanderson wrote:
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> hi Intel IGC Maintainers,
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> I've managed to reproduce this issue on 5.15.85 (same
> steps to
> > > >>>>>>>>>>>> reproduce), and have symbols and line numbers in the
> below panic.
> > > >>>>>>>>>>>> There's no device support in 5.4 for this hardware, so I
> was
> > > >>>>>>>>>>>> unable to reproduce the issue there in igc.
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>>     From the Kernel BUG_ON, it's being asked to read
> beyond the
> > > >>>>>>>>>>>> array size. The min call looks very suspicious (igb, and
> other
> > > >>>>>>>>>>>> drives don't appear to do that), but I don't know if
> that's where the issue is.
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> Please let me know if there's anything more I can do to
> help.
> > > >>>>>>>>>>>
> > > >>>>>>>>>>> I do not know if it is an SW problem.
> > > >>>>>>>>>>> 1. Does the problem reproduce on the latest upstream
> kernel?(worth
> > > >>>>>>>>>>> to check) 2. I do not see this crash in our labs. I haven't a
> > > >>>>>>>>>>> platform with six
> > > >>>>>>>>>>> i226 parts.(Trying find folks who work with this
> platform.) 3. I
> > > >>>>>>>>>>> am working on a patch to address .ndo_tx_timeout
> support. (pass
> > > >>>>>>>>>>> the reset task to netdev while the link disconnected
> during
> > > >>>>>>>>>>> traffic, under testing). It could be related and worth
> checking -
> > > >>>>>>>>>>> please, let me know if you want to apply on your
> platform (against upstream).
> > > >>>>>>>>>>> Reach us (Dima, Amir, and me) directly off the list.
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> [  223.725003] igc 0000:01:00.0 eth0: Reset adapter [
> > > >>>>>>>>>>>> 233.139441] kernel BUG at
> lib/dynamic_queue_limits.c:27!
> > > >>>>>>>>>>>> [  233.146814] invalid opcode: 0000 [#1] SMP NOPTI [
> > > >>>>>>>>>>>> 233.146816]
> > > >>>>>>>>>>>> refcount_t: saturated; leaking memory.
> > > >>>>>>>>>>>> [  233.146833] WARNING: CPU: 0 PID: 0 at
> lib/refcount.c:19
> > > >>>>>>>>>>>> refcount_warn_saturate+0x97/0x110
> > > >>>>>>>>>>>> [  233.153243] CPU: 1 PID: 0 Comm: swapper/1
> Tainted: G        W
> > > >>>>>>>>>>>>       5.15.85-amd64-vyos #1
> > > >>>>>>>>>>>> [  233.159216] Modules linked in:
> > > >>>>>>>>>>>> [  233.168451] Hardware name: Default string Default
> > > >>>>>>>>>>>> string/Default string, BIOS 5.19 09/23/2022 [
> 233.177895]
> > > >>>>>>>>>>>> wireguard [  233.181645] RIP:
> 0010:dql_completed+0x12f/0x140 [
> > > >>>>>>>>>>>> 233.191360]  curve25519_x86_64 [  233.194406]
> Code: cf c9 00 48
> > > >>>>>>>>>>>> 89
> > > >>>>>>>>>>>> 57 58 e9 54 ff ff ff 85 ed 40 0f
> > > >>>>>>>>>>>> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a
> 44 89 d8
> > > >>>>>>>>>>>> e9
> > > >>>>>>>>>>>> 36 ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc
> cc cc
> > > >>>>>>>>>>>> 41 56 49
> > > >>>>>>>>>>>> 89 f3
> > > >>>>>>>>>>>> [  233.199767]  libcurve25519_generic [  233.203540]
> RSP:
> > > >>>>>>>>>>>> 0018:ffffa85dc0134e20 EFLAGS: 00010283 [
> 233.225248]
> > > >>>>>>>>>>>> libchacha20poly1305 [  233.229417] [  233.229417]
> RAX:
> > > >>>>>>>>>>>> 0000000000000001 RBX: ffff934002104b40 RCX:
> 00000000000005ea [
> > > >>>>>>>>>>>> 233.235539]  chacha_x86_64 [  233.239508] RDX:
> ffff934002110000
> > > >>>>>>>>>>>> RSI: 0000000000001d92 RDI: ffff93400211a200 [
> 233.241606]
> > > >>>>>>>>>>>> poly1305_x86_64 [  233.249796] RBP:
> 0000000000000000 R08:
> > > >>>>>>>>>>>> 000000000004ad4e R09: 0000000000000000 [
> 233.253226]
> > > >>>>>>>>>>>> ip6_udp_tunnel [  233.261445] R10:
> 000000000004b338 R11:
> > > >>>>>>>>>>>> ffffffffbabfee80 R12: 0000000000001d92 [
> 233.261446] R13:
> > > >>>>>>>>>>>> ffff934002104b40 R14: ffffa85dc09d1450 R15:
> 00000000ffffffa6 [
> > > >>>>>>>>>>>> 233.265054]  udp_tunnel [  233.273314] FS:
> > > >>>>>>>>>>>> 0000000000000000(0000)
> > > >>>>>>>>>>>> GS:ffff934f3fe80000(0000)
> > > >>>>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>>>> [  233.276826]  libchacha
> > > >>>>>>>>>>>> [  233.285023] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033
> > > >>>>>>>>>>>> [ 233.285025] CR2: 00007f294393fe84 CR3:
> 0000000605e10000 CR4:
> > > >>>>>>>>>>>> 0000000000350ee0 [  233.285026] Call Trace:
> > > >>>>>>>>>>>> [  233.285026]  <IRQ>
> > > >>>>>>>>>>>> [  233.285027]  igc_poll+0x19d/0x14b0 [igc] [
> 233.293242]  vrf
> > > >>>>>>>>>>>> [ 233.296396]  __napi_poll+0x22/0x110 [  233.305688]
> nft_masq [
> > > >>>>>>>>>>>> 233.308763]  net_rx_action+0xe9/0x250 [
> 233.315455]
> > > >>>>>>>>>>>> nf_nat_tftp [  233.323756]  ? igc_msix_ring+0x51/0x60
> [igc] [
> > > >>>>>>>>>>>> 233.326946] nf_conntrack_tftp [  233.329661]
> > > >>>>>>>>>>>> __do_softirq+0xb8/0x1e9 [ 233.334471]  nf_nat_sip [
> 233.336991]
> > > >>>>>>>>>>>> irq_exit_rcu+0x84/0xb0 [ 233.341290]
> nf_conntrack_sip [
> > > >>>>>>>>>>>> 233.344284]
> > > >>>>>>>>>>>> common_interrupt+0x78/0x90 [  233.348778]
> nf_nat_pptp [
> > > >>>>>>>>>>>> 233.352104]  </IRQ> [  233.357240]
> nf_conntrack_pptp [
> > > >>>>>>>>>>>> 233.361052]  <TASK> [  233.365360]  nf_nat_h323 [
> 233.368484]
> > > >>>>>>>>>>>> asm_common_interrupt+0x22/0x40 [  233.372723]
> nf_conntrack_h323
> > > >>>>>>>>>>>> [ 233.376363] RIP:
> 0010:cpuidle_enter_state+0xb5/0x2a0
> > > >>>>>>>>>>>> [  233.380952]  nf_nat_ftp
> > > >>>>>>>>>>>> [  233.384155] Code: c1 48 b2 ff 65 8b 3d b2 58 49 46
> e8 65 47
> > > >>>>>>>>>>>> b2 ff
> > > >>>>>>>>>>>> 31 ff 49 89 c5 e8 6b 52 b2 ff 45 84 f6 0f 85 85 01 00 00
> fb 66
> > > >>>>>>>>>>>> 0f 1f
> > > >>>>>>>>>>>> 44 00 00 <45> 85 ff 0f 88 bb 00 00 00 49 63 c7 4c 2b
> 2c 24 48 8d
> > > >>>>>>>>>>>> 14 40
> > > >>>>>>>>>>>> 48 8d
> > > >>>>>>>>>>>> [  233.386840]  nf_conntrack_ftp [  233.390553] RSP:
> > > >>>>>>>>>>>> 0018:ffffa85dc00efea8 EFLAGS: 00000246 [
> 233.393224]  nft_objref
> > > >>>>>>>>>>>> [  233.396340] [  233.396340] RAX:
> > > >>>>>>>>>>>> ffff934f3fea3440 RBX: 0000000000000003 RCX:
> 000000000000001f [
> > > >>>>>>>>>>>> 233.401256]  nft_counter [  233.404981] RDX:
> 0000000000000000 RSI:
> > > >>>>>>>>>>>> 0000000046ec0743 RDI: 0000000000000000 [
> 233.410769]  nft_ct [
> > > >>>>>>>>>>>> 233.413816] RBP: ffff934f3feac910 R08:
> 00000036481c5d1b R09:
> > > >>>>>>>>>>>> 0000003605db0041 [  233.435320]  nft_chain_nat [
> 233.438947] R10:
> > > >>>>>>>>>>>> 0000000000000072 R11: 0000000000000164 R12:
> ffffffffba6ccb40 [
> > > >>>>>>>>>>>> 233.445014]  nf_nat [  233.448065] R13:
> 00000036481c5d1b R14:
> > > >>>>>>>>>>>> 0000000000000000 R15: 0000000000000003 [
> 233.450073]  nf_tables
> > > >>>>>>>>>>>> [ 233.458210]  ? cpuidle_enter_state+0xa5/0x2a0 [
> 233.461335]
> > > >>>>>>>>>>>> nfnetlink_cthelper [  233.469449]
> cpuidle_enter+0x24/0x40 [
> > > >>>>>>>>>>>> 233.472106]  nf_conntrack [  233.480247]
> do_idle+0x1e4/0x280 [
> > > >>>>>>>>>>>> 233.483580]  nf_defrag_ipv6 [  233.491703]
> > > >>>>>>>>>>>> cpu_startup_entry+0x14/0x20 [  233.494399]
> nf_defrag_ipv4 [
> > > >>>>>>>>>>>> 233.502517]
> secondary_startup_64_no_verify+0xb0/0xbb
> > > >>>>>>>>>>>> [  233.505503]  libcrc32c
> > > >>>>>>>>>>>> [  233.510641]  </TASK>
> > > >>>>>>>>>>>> [  233.514474]  nfnetlink
> > > >>>>>>>>>>>> [  233.518787] Modules linked in: wireguard [
> 233.522065]
> > > >>>>>>>>>>>> af_packet [  233.525975]  curve25519_x86_64 [
> 233.529441]
> > > >>>>>>>>>>>> x86_pkg_temp_thermal [  233.534136]
> libcurve25519_generic [
> > > >>>>>>>>>>>> 233.537612]  intel_powerclamp [  233.543511]
> > > >>>>>>>>>>>> libchacha20poly1305 [  233.546508]  coretemp [
> 233.549313]
> > > >>>>>>>>>>>> chacha_x86_64
> > > >>>>>>>>>>>> poly1305_x86_64 [  233.552304]  crct10dif_pclmul [
> 233.556981]
> > > >>>>>>>>>>>> ip6_udp_tunnel udp_tunnel libchacha vrf nft_masq
> nf_nat_tftp
> > > >>>>>>>>>>>> nf_conntrack_tftp nf_nat_sip nf_conntrack_sip
> nf_nat_pptp
> > > >>>>>>>>>>>> nf_conntrack_pptp nf_nat_h323 nf_conntrack_h323
> nf_nat_ftp
> > > >>>>>>>>>>>> nf_conntrack_ftp [  233.559990]  crc32_pclmul [
> 233.563754]
> > > >>>>>>>>>>>> nft_objref nft_counter [  233.567791]
> ghash_clmulni_intel [
> > > >>>>>>>>>>>> 233.571912]  nft_ct [  233.575569]  aesni_intel [
> 233.579500]
> > > >>>>>>>>>>>> nft_chain_nat [  233.582390]  crypto_simd [
> 233.587225]  nf_nat
> > > >>>>>>>>>>>> [ 233.590841]  cryptd [  233.612012]  nf_tables [
> 233.615288]
> > > >>>>>>>>>>>> intel_cstate [  233.619486]  nfnetlink_cthelper [
> 233.623388]
> > > >>>>>>>>>>>> iTCO_wdt [  233.626063]  nf_conntrack [  233.629196]
> efi_pstore
> > > >>>>>>>>>>>> [ 233.632499]  nf_defrag_ipv6 [  233.635597]  pcspkr [
> > > >>>>>>>>>>>> 233.638218]
> > > >>>>>>>>>>>> nf_defrag_ipv4 [  233.640825]  evdev [  233.643700]
> libcrc32c [
> > > >>>>>>>>>>>> 233.646869]  iTCO_vendor_support [  233.650591]
> nfnetlink [
> > > >>>>>>>>>>>> 233.653355]  sg [  233.656497]  af_packet [
> 233.659446]
> > > >>>>>>>>>>>> tpm_crb [  233.662775]  x86_pkg_temp_thermal [
> 233.665337]
> > > >>>>>>>>>>>> tpm_tis [ 233.668670]  intel_powerclamp [
> 233.671144]
> > > >>>>>>>>>>>> tpm_tis_core [ 233.673993]  coretemp [  233.677768]
> tpm [
> > > >>>>>>>>>>>> 233.680591] crct10dif_pclmul [  233.682782]  rng_core
> [
> > > >>>>>>>>>>>> 233.685624] crc32_pclmul [  233.688271]  mei_me [
> 233.692161]
> > > >>>>>>>>>>>> ghash_clmulni_intel [  233.694799]  mei [  233.698290]
> > > >>>>>>>>>>>> aesni_intel [  233.701384]  button [  233.704125]
> crypto_simd [
> > > >>>>>>>>>>>> 233.706379]  acpi_pad [  233.709861]  cryptd [
> 233.712587]
> > > >>>>>>>>>>>> mpls_iptunnel [  233.715682]  intel_cstate [
> 233.718177]
> > > >>>>>>>>>>>> mpls_router [  233.721872]  iTCO_wdt [  233.724077]
> ip_tunnel [
> > > >>>>>>>>>>>> 233.727034]  efi_pstore [  233.729533]  br_netfilter [
> > > >>>>>>>>>>>> 233.732471]  pcspkr [  233.735139]  bridge [
> 233.737627]  evdev
> > > >>>>>>>>>>>> [ 233.740768]  stp [  233.743827]
> iTCO_vendor_support [
> > > >>>>>>>>>>>> 233.746789]  llc [  233.749457]  sg [  233.752222]  fuse
> [
> > > >>>>>>>>>>>> 233.755071]  tpm_crb [  233.758113]  configfs [
> 233.760589]
> > > >>>>>>>>>>>> tpm_tis [  233.763065]  efivarfs [  233.765437]
> tpm_tis_core [
> > > >>>>>>>>>>>> 233.767622]  ip_tables [  233.771314]  tpm [
> 233.773511]
> > > >>>>>>>>>>>> x_tables [  233.775607]  rng_core [  233.777893]
> autofs4 [
> > > >>>>>>>>>>>> 233.780456]  mei_me [  233.783120]  usb_storage [
> 233.785686]
> > > >>>>>>>>>>>> mei [  233.788319]  ohci_hcd [  233.791358]  button [
> > > >>>>>>>>>>>> 233.794104] uhci_hcd [  233.796287]  acpi_pad [
> 233.798948]
> > > >>>>>>>>>>>> ehci_hcd [ 233.801608]  mpls_iptunnel [  233.804146]
> squashfs [
> > > >>>>>>>>>>>> 233.806598] mpls_router [  233.809530]
> zstd_decompress [
> > > >>>>>>>>>>>> 233.811719] ip_tunnel [  233.814378]  lz4_decompress
> [
> > > >>>>>>>>>>>> 233.816841] br_netfilter [  233.819492]  loop [
> 233.822152]
> > > >>>>>>>>>>>> bridge [ 233.824802]  overlay [  233.827927]  stp [
> 233.830564]
> > > >>>>>>>>>>>> ext4 [ 233.833498]  llc [  233.836805]  crc32c_generic [
> > > >>>>>>>>>>>> 233.839557] fuse [  233.842787]  crc16 [  233.845815]
> configfs
> > > >>>>>>>>>>>> [  233.848084] mbcache [  233.850564]  efivarfs [
> 233.853117]
> > > >>>>>>>>>>>> jbd2 [ 233.855296]  ip_tables [  233.857561]
> nls_cp437 [
> > > >>>>>>>>>>>> 233.859722] x_tables autofs4 [  233.862950]  vfat [
> 233.865216]
> > > >>>>>>>>>>>> usb_storage [  233.867585]  fat [  233.870239]
> ohci_hcd
> > > >>>>>>>>>>>> uhci_hcd [ 233.872779]  efivars [  233.875414]
> ehci_hcd [
> > > >>>>>>>>>>>> 233.877693] nls_ascii [  233.880433]  squashfs
> zstd_decompress [
> > > >>>>>>>>>>>> 233.883172] hid_generic [  233.886580]
> lz4_decompress [
> > > >>>>>>>>>>>> 233.888861]  usbhid [  233.891803]  loop [
> 233.893980]  hid [
> > > >>>>>>>>>>>> 233.897493]  overlay [ 233.900050]  sd_mod [
> 233.902702]  ext4
> > > >>>>>>>>>>>> [  233.905446]  t10_pi [ 233.909612]  crc32c_generic [
> > > >>>>>>>>>>>> 233.912548]  ahci [  233.915776]
> > > >>>>>>>>>>>> crc16 [  233.918244]  libahci [  233.920540]  mbcache [
> > > >>>>>>>>>>>> 233.922740]  crc32c_intel [  233.925303]  jbd2 [
> 233.927777]
> > > >>>>>>>>>>>> libata [  233.930058]  nls_cp437 [  233.932530]
> i2c_i801 [
> > > >>>>>>>>>>>> 233.935740]  vfat fat [  233.938022]  i2c_smbus [
> 233.940397]
> > > >>>>>>>>>>>> efivars [  233.942945]  xhci_pci [  233.945504]  nls_ascii
> > > >>>>>>>>>>>> hid_generic [  233.948535]  xhci_hcd [  233.950814]
> usbhid [
> > > >>>>>>>>>>>> 233.953282]  scsi_mod [  233.956022]  hid [
> 233.958671]
> > > >>>>>>>>>>>> scsi_common [  233.961327]  sd_mod t10_pi [
> 233.964066]  igc [
> > > >>>>>>>>>>>> 233.966618]  ahci [  233.969274]  thermal [
> 233.973168]
> > > >>>>>>>>>>>> libahci [  233.975830]  fan [  233.978310]  crc32c_intel [
> > > >>>>>>>>>>>> 233.980975] [ 233.983158]  libata
> > > >>>>>>>>>>>> [  233.986113] CPU: 0 PID: 0 Comm: swapper/0
> Tainted: G        W
> > > >>>>>>>>>>>>       5.15.85-amd64-vyos #1
> > > >>>>>>>>>>>> [  233.989257]  i2c_i801
> > > >>>>>>>>>>>> [  233.991441] Hardware name: Default string Default
> > > >>>>>>>>>>>> string/Default string, BIOS 5.19 09/23/2022 [
> 233.993730]
> > > >>>>>>>>>>>> i2c_smbus [  233.996286] RIP:
> > > >>>>>>>>>>>> 0010:refcount_warn_saturate+0x97/0x110
> > > >>>>>>>>>>>> [  233.998850]  xhci_pci
> > > >>>>>>>>>>>> [  234.001055] Code: 00 01 e8 cb 40 42 00 0f 0b c3 cc
> cc cc cc
> > > >>>>>>>>>>>> 80 3d
> > > >>>>>>>>>>>> 39 f4 da 00 00 75 a8 48 c7 c7 d8 13 43 ba c6 05 29 f4
> da 00 01
> > > >>>>>>>>>>>> e8
> > > >>>>>>>>>>>> a8
> > > >>>>>>>>>>>> 40 42 00 <0f> 0b c3 cc cc cc cc 80 3d 13 f4 da 00 00 75
> 85 48 c7
> > > >>>>>>>>>>>> c7 30
> > > >>>>>>>>>>>> 14 43
> > > >>>>>>>>>>>> [  234.004069]  xhci_hcd scsi_mod [  234.005878] RSP:
> > > >>>>>>>>>>>> 0018:ffffa85dc0003ae0 EFLAGS: 00010282 [
> 234.008348]
> > > >>>>>>>>>>>> scsi_common igc [  234.017611] [  234.020297]
> thermal fan [
> > > >>>>>>>>>>>> 234.029764] RAX: 0000000000000000 RBX:
> > > >>>>>>>>>>>> 0000000000005837 RCX: 0000000000000000 [
> 234.032559] [
> > > >>>>>>>>>>>> 234.032585] ---[ end trace 8acd09a29bf2e660 ]--- [
> 234.038458]
> > > >>>>>>>>>>>> RDX: ffff934f3fe1f3e0 RSI: ffff934f3fe1c490 RDI:
> > > >>>>>>>>>>>> 0000000000000300 [  234.141617] RIP:
> > > >>>>>>>>>>>> 0010:dql_completed+0x12f/0x140 [  234.146459]
> > > >>>>>>>>>>>> RBP: ffff9340074b28c0 R08: 0000000000000000 R09:
> > > >>>>>>>>>>>> ffffa85dc0003908 [  234.150075] Code: cf c9 00 48 89
> 57 58 e9 54
> > > >>>>>>>>>>>> ff ff ff 85 ed 40 0f
> > > >>>>>>>>>>>> 95 c5 41 39 d8 41 0f 95 c0 44 84 c5 74 04 85 d2 78 0a
> 44 89 d8
> > > >>>>>>>>>>>> e9
> > > >>>>>>>>>>>> 36 ff ff ff <0f> 0b 01 f6 44 89 da 29 f2 0f 48 d0 eb 8d cc
> cc cc
> > > >>>>>>>>>>>> 41 56 49
> > > >>>>>>>>>>>> 89 f3
> > > >>>>>>>>>>>> [  234.156048] R10: ffffa85dc0003900 R11:
> ffffffffba6b0ce8 R12:
> > > >>>>>>>>>>>> ffff9340074b2908 [  234.159502] RSP:
> 0018:ffffa85dc0134e20 EFLAGS:
> > > >>>>>>>>>>>> 00010283 [  234.161442] R13: ffffffffba28eb60 R14:
> > > >>>>>>>>>>>> fffffffffffffff0 R15: ffffa85dc0003b40 [  234.164506] [
> > > >>>>>>>>>>>> 234.172573] FS:  0000000000000000(0000)
> > > >>>>>>>>>>>> GS:ffff934f3fe00000(0000)
> > > >>>>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>>>> [  234.174545] RAX: 0000000000000001 RBX:
> ffff934002104b40 RCX:
> > > >>>>>>>>>>>> 00000000000005ea [  234.179914] CS:  0010 DS: 0000
> ES: 0000 CR0:
> > > >>>>>>>>>>>> 0000000080050033 [  234.188023] RDX:
> ffff934002110000 RSI:
> > > >>>>>>>>>>>> 0000000000001d92 RDI: ffff93400211a200 [
> 234.193301] CR2:
> > > >>>>>>>>>>>> 000055e26436ee10 CR3: 0000000605e10000 CR4:
> 0000000000350ef0 [
> > > >>>>>>>>>>>> 234.201457] RBP: 0000000000000000 R08:
> 000000000004ad4e R09: 0000000000000000 [  234.223063] Call Trace:
> > > >>>>>>>>>>>> [  234.231267] R10: 000000000004b338 R11:
> ffffffffbabfee80 R12:
> > > >>>>>>>>>>>> 0000000000001d92 [  234.237398]  <IRQ> [
> 234.245613] R13:
> > > >>>>>>>>>>>> ffff934002104b40 R14: ffffa85dc09d1450 R15:
> 00000000ffffffa6 [
> > > >>>>>>>>>>>> 234.247734]  __nf_conntrack_find_get+0x331/0x340
> [nf_conntrack]
> > > >>>>>>>>>>>> [ 234.256997] FS:  0000000000000000(0000)
> > > >>>>>>>>>>>> GS:ffff934f3fe80000(0000)
> > > >>>>>>>>>>>> knlGS:0000000000000000
> > > >>>>>>>>>>>> [  234.265245]  nf_conntrack_in+0x1e1/0x760
> [nf_conntrack] [
> > > >>>>>>>>>>>> 234.271954] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [
> > > >>>>>>>>>>>> 234.280252]  nf_hook_slow+0x37/0xb0 [  234.288537]
> CR2:
> > > >>>>>>>>>>>> 00007f294393fe84 CR3: 000000011da48000 CR4:
> 0000000000350ee0 [
> > > >>>>>>>>>>>> 234.296788]  nf_hook_slow_list+0x8c/0x130 [
> 234.300002] Kernel
> > > >>>>>>>>>>>> panic - not syncing: Fatal exception in interrupt [
> 234.308339]
> > > >>>>>>>>>>>> ip_sublist_rcv+0x1fa/0x220 [  234.319422] Kernel
> Offset:
> > > >>>>>>>>>>>> 0x38600000 from 0xffffffff81000000 (relocation range:
> > > >>>>>>>>>>>> 0xffffffff80000000-0xffffffffbfffffff)
> > > >>>>>>>>>>>> [  234.494681] ---[ end Kernel panic - not syncing: Fatal
> > > >>>>>>>>>>>> exception in interrupt ]---
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> Kyle.
> > > >>>>>>>>>>>>
> > > >>>>>>>>>>>> On Tue, Dec 20, 2022 at 10:29 AM Kyle Sanderson
> <kyle.leet@gmail.com> wrote:
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> re-sending as plain text - my apologies.
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>>> On Sun, 18 Dec 2022, 23:31 Neftin, Sasha wrote:
> > > >>>>>>>>>>>>>> What is a board in use (LAN on board or NIC)?
> > > >>>>>>>>>>>>>> What is lspci, lspci -t and lspci -s 0000:[lan
> bus:device.function] -vvv output?
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> It's embedded on the board, could very well be on a
> bridge
> > > >>>>>>>>>>>>> though as a card. The box has 6 ports, 2 were in-use
> while testing.
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> 00:00.0 Host bridge: Intel Corporation Device 4522
> (rev 01)
> > > >>>>>>>>>>>>> 00:02.0 VGA compatible controller: Intel Corporation
> Elkhart
> > > >>>>>>>>>>>>> Lake [UHD Graphics Gen11 16EU] (rev 01)
> > > >>>>>>>>>>>>> 00:08.0 System peripheral: Intel Corporation Device
> 4511 (rev
> > > >>>>>>>>>>>>> 01)
> > > >>>>>>>>>>>>> 00:14.0 USB controller: Intel Corporation Device 4b7d
> (rev 11)
> > > >>>>>>>>>>>>> 00:14.2 RAM memory: Intel Corporation Device 4b7f
> (rev 11)
> > > >>>>>>>>>>>>> 00:16.0 Communication controller: Intel Corporation
> Device 4b70
> > > >>>>>>>>>>>>> (rev 11)
> > > >>>>>>>>>>>>> 00:17.0 SATA controller: Intel Corporation Device
> 4b63 (rev 11)
> > > >>>>>>>>>>>>> 00:1c.0 PCI bridge: Intel Corporation Device 4b38 (rev
> 11)
> > > >>>>>>>>>>>>> 00:1c.1 PCI bridge: Intel Corporation Device 4b39 (rev
> 11)
> > > >>>>>>>>>>>>> 00:1c.2 PCI bridge: Intel Corporation Device 4b3a (rev
> 11)
> > > >>>>>>>>>>>>> 00:1c.3 PCI bridge: Intel Corporation Device 4b3b (rev
> 11)
> > > >>>>>>>>>>>>> 00:1c.4 PCI bridge: Intel Corporation Device 4b3c (rev
> 11)
> > > >>>>>>>>>>>>> 00:1c.6 PCI bridge: Intel Corporation Device 4b3e (rev
> 11)
> > > >>>>>>>>>>>>> 00:1f.0 ISA bridge: Intel Corporation Device 4b00 (rev
> 11)
> > > >>>>>>>>>>>>> 00:1f.3 Audio device: Intel Corporation Device 4b58
> (rev 11)
> > > >>>>>>>>>>>>> 00:1f.4 SMBus: Intel Corporation Device 4b23 (rev 11)
> > > >>>>>>>>>>>>> 00:1f.5 Serial bus controller: Intel Corporation Device
> 4b24
> > > >>>>>>>>>>>>> (rev
> > > >>>>>>>>>>>>> 11)
> > > >>>>>>>>>>>>> 01:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>> 02:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>> 03:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>> 04:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>> 05:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>> 06:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev
> > > >>>>>>>>>>>>> 04)
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> -[0000:00]-+-00.0
> > > >>>>>>>>>>>>>                +-02.0
> > > >>>>>>>>>>>>>                +-08.0
> > > >>>>>>>>>>>>>                +-14.0
> > > >>>>>>>>>>>>>                +-14.2
> > > >>>>>>>>>>>>>                +-16.0
> > > >>>>>>>>>>>>>                +-17.0
> > > >>>>>>>>>>>>>                +-1c.0-[01]----00.0
> > > >>>>>>>>>>>>>                +-1c.1-[02]----00.0
> > > >>>>>>>>>>>>>                +-1c.2-[03]----00.0
> > > >>>>>>>>>>>>>                +-1c.3-[04]----00.0
> > > >>>>>>>>>>>>>                +-1c.4-[05]----00.0
> > > >>>>>>>>>>>>>                +-1c.6-[06]----00.0
> > > >>>>>>>>>>>>>                +-1f.0
> > > >>>>>>>>>>>>>                +-1f.3
> > > >>>>>>>>>>>>>                +-1f.4
> > > >>>>>>>>>>>>>                \-1f.5
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> 01:00.0 Ethernet controller: Intel Corporation Device
> 125c (rev 04)
> > > >>>>>>>>>>>>>      Subsystem: Intel Corporation Device 0000
> > > >>>>>>>>>>>>>      Control: I/O- Mem+ BusMaster+ SpecCycle-
> MemWINV- VGASnoop-
> > > >>>>>>>>>>>>> ParErr-
> > > >>>>>>>>>>>>> Stepping- SERR- FastB2B- DisINTx+
> > > >>>>>>>>>>>>>      Status: Cap+ 66MHz- UDF- FastB2B- ParErr-
> DEVSEL=fast
> > > >>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>> TAbort-
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> <TAbort- <MAbort- >SERR- <PERR- INTx-
> > > >>>>>>>>>>>>>      Latency: 0
> > > >>>>>>>>>>>>>      Interrupt: pin A routed to IRQ 16
> > > >>>>>>>>>>>>>      Region 0: Memory at 80600000 (32-bit, non-
> prefetchable) [size=1M]
> > > >>>>>>>>>>>>>      Region 3: Memory at 80700000 (32-bit, non-
> prefetchable) [size=16K]
> > > >>>>>>>>>>>>>      Capabilities: [40] Power Management version 3
> > > >>>>>>>>>>>>>       Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA
> PME(D0+,D1-,D2-,D3hot+,D3cold+)
> > > >>>>>>>>>>>>>       Status: D0 NoSoftRst+ PME-Enable- DSel=0
> DScale=1 PME-
> > > >>>>>>>>>>>>>      Capabilities: [50] MSI: Enable- Count=1/1
> Maskable+ 64bit+
> > > >>>>>>>>>>>>>       Address: 0000000000000000 Data: 0000
> > > >>>>>>>>>>>>>       Masking: 00000000 Pending: 00000000
> > > >>>>>>>>>>>>>      Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
> > > >>>>>>>>>>>>>       Vector table: BAR=3 offset=00000000
> > > >>>>>>>>>>>>>       PBA: BAR=3 offset=00002000
> > > >>>>>>>>>>>>>      Capabilities: [a0] Express (v2) Endpoint, MSI 00
> > > >>>>>>>>>>>>>       DevCap: MaxPayload 512 bytes, PhantFunc 0,
> Latency L0s <512ns, L1 <64us
> > > >>>>>>>>>>>>>        ExtTag- AttnBtn- AttnInd- PwrInd- RBE+ FLReset+
> SlotPowerLimit 0W
> > > >>>>>>>>>>>>>       DevCtl: CorrErr+ NonFatalErr+ FatalErr+
> UnsupReq+
> > > >>>>>>>>>>>>>        RlxdOrd+ ExtTag- PhantFunc- AuxPwr- NoSnoop+
> FLReset-
> > > >>>>>>>>>>>>>        MaxPayload 128 bytes, MaxReadReq 512 bytes
> > > >>>>>>>>>>>>>       DevSta: CorrErr- NonFatalErr- FatalErr- UnsupReq-
> AuxPwr+ TransPend-
> > > >>>>>>>>>>>>>       LnkCap: Port #0, Speed 5GT/s, Width x1, ASPM L1,
> Exit Latency L1 <4us
> > > >>>>>>>>>>>>>        ClockPM- Surprise- LLActRep- BwNot-
> ASPMOptComp+
> > > >>>>>>>>>>>>>       LnkCtl: ASPM Disabled; RCB 64 bytes, Disabled-
> CommClk+
> > > >>>>>>>>>>>>>        ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
> > > >>>>>>>>>>>>>       LnkSta: Speed 5GT/s, Width x1
> > > >>>>>>>>>>>>>        TrErr- Train- SlotClk+ DLActive- BWMgmt-
> ABWMgmt-
> > > >>>>>>>>>>>>>       DevCap2: Completion Timeout: Range ABCD,
> TimeoutDis+ NROPrPrP- LTR+
> > > >>>>>>>>>>>>>         10BitTagComp- 10BitTagReq- OBFF Not
> Supported, ExtFmt- EETLPPrefix-
> > > >>>>>>>>>>>>>         EmergencyPowerReduction Not Supported,
> EmergencyPowerReductionInit-
> > > >>>>>>>>>>>>>         FRS- TPHComp- ExtTPHComp-
> > > >>>>>>>>>>>>>         AtomicOpsCap: 32bit- 64bit- 128bitCAS-
> > > >>>>>>>>>>>>>       DevCtl2: Completion Timeout: 50us to 50ms,
> TimeoutDis- LTR+
> > > >>>>>>>>>>>>> 10BitTagReq- OBFF Disabled,
> > > >>>>>>>>>>>>>         AtomicOpsCtl: ReqEn-
> > > >>>>>>>>>>>>>       LnkCtl2: Target Link Speed: 5GT/s,
> EnterCompliance- SpeedDis-
> > > >>>>>>>>>>>>>         Transmit Margin: Normal Operating Range,
> > > >>>>>>>>>>>>> EnterModifiedCompliance-
> > > >>>>>>>>>>>>> ComplianceSOS-
> > > >>>>>>>>>>>>>         Compliance Preset/De-emphasis: -6dB de-
> emphasis, 0dB preshoot
> > > >>>>>>>>>>>>>       LnkSta2: Current De-emphasis Level: -6dB,
> > > >>>>>>>>>>>>> EqualizationComplete-
> > > >>>>>>>>>>>>> EqualizationPhase1-
> > > >>>>>>>>>>>>>         EqualizationPhase2- EqualizationPhase3-
> LinkEqualizationRequest-
> > > >>>>>>>>>>>>>         Retimer- 2Retimers- CrosslinkRes: unsupported
> > > >>>>>>>>>>>>>      Capabilities: [100 v2] Advanced Error Reporting
> > > >>>>>>>>>>>>>       UESta: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
> UnxCmplt-
> > > >>>>>>>>>>>>> RxOF-
> > > >>>>>>>>>>>>> MalfTLP- ECRC- UnsupReq- ACSViol-
> > > >>>>>>>>>>>>>       UEMsk: DLP- SDES- TLP- FCP- CmpltTO- CmpltAbrt-
> UnxCmplt-
> > > >>>>>>>>>>>>> RxOF-
> > > >>>>>>>>>>>>> MalfTLP- ECRC- UnsupReq- ACSViol-
> > > >>>>>>>>>>>>>       UESvrt: DLP+ SDES+ TLP- FCP+ CmpltTO-
> CmpltAbrt- UnxCmplt-
> > > >>>>>>>>>>>>> RxOF+
> > > >>>>>>>>>>>>> MalfTLP+ ECRC- UnsupReq- ACSViol-
> > > >>>>>>>>>>>>>       CESta: RxErr- BadTLP- BadDLLP- Rollover- Timeout-
> AdvNonFatalErr-
> > > >>>>>>>>>>>>>       CEMsk: RxErr- BadTLP- BadDLLP- Rollover- Timeout-
> AdvNonFatalErr+
> > > >>>>>>>>>>>>>       AERCap: First Error Pointer: 00, ECRCGenCap+
> ECRCGenEn- ECRCChkCap+ ECRCChkEn-
> > > >>>>>>>>>>>>>        MultHdrRecCap- MultHdrRecEn- TLPPfxPres-
> HdrLogCap-
> > > >>>>>>>>>>>>>       HeaderLog: 00000000 00000000 00000000
> 00000000
> > > >>>>>>>>>>>>>      Capabilities: [140 v1] Device Serial Number e4-3a-
> 6e-ff-ff-5d-bb-54
> > > >>>>>>>>>>>>>      Capabilities: [1c0 v1] Latency Tolerance Reporting
> > > >>>>>>>>>>>>>       Max snoop latency: 3145728ns
> > > >>>>>>>>>>>>>       Max no snoop latency: 3145728ns
> > > >>>>>>>>>>>>>      Capabilities: [1f0 v1] Precision Time Measurement
> > > >>>>>>>>>>>>>       PTMCap: Requester:+ Responder:- Root:-
> > > >>>>>>>>>>>>>       PTMClockGranularity: 4ns
> > > >>>>>>>>>>>>>       PTMControl: Enabled:- RootSelected:-
> > > >>>>>>>>>>>>>       PTMEffectiveGranularity: Unknown
> > > >>>>>>>>>>>>>      Capabilities: [1e0 v1] L1 PM Substates
> > > >>>>>>>>>>>>>       L1SubCap: PCI-PM_L1.2+ PCI-PM_L1.1+
> ASPM_L1.2+ ASPM_L1.1+ L1_PM_Substates+
> > > >>>>>>>>>>>>>          PortCommonModeRestoreTime=55us
> PortTPowerOnTime=70us
> > > >>>>>>>>>>>>>       L1SubCtl1: PCI-PM_L1.2- PCI-PM_L1.1-
> ASPM_L1.2- ASPM_L1.1-
> > > >>>>>>>>>>>>>           T_CommonMode=0us
> LTR1.2_Threshold=81920ns
> > > >>>>>>>>>>>>>       L1SubCtl2: T_PwrOn=50us
> > > >>>>>>>>>>>>>      Kernel driver in use: igc
> > > >>>>>>>>>>>>>      Kernel modules: igc
> > > >>>>>>>>>>>>>
> > > >>>>>>>>>>>>> On Sun, Dec 18, 2022 at 10:31 PM Neftin, Sasha
> <sasha.neftin@intel.com> wrote:
> > > >>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>> On 12/16/2022 00:28, Kyle Sanderson wrote:
> > > >>>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>>> (Un)fortunately I can reproduce this bug by simply
> removing
> > > >>>>>>>>>>>>>>> the ethernet cable from the box while there is traffic
> flowing.
> > > >>>>>>>>>>>>>>> kprint below from a console line. Please CC / to me
> for any
> > > >>>>>>>>>>>>>>> additional information I can provide for this panic.
> > > >>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>> What is a board in use (LAN on board or NIC)? What
> is lspci,
> > > >>>>>>>>>>>>>> lspci -t and lspci -s 0000:[lan bus:device.function] -
> vvv output?
> > > >>>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>>> [  156.707054] igc 0000:01:00.0 eth0: NIC Link is
> Down [
> > > >>>>>>>>>>>>>>> 156.712981] br-lan: port 1(eth0) entered disabled
> state [
> > > >>>>>>>>>>>>>>> 156.719246] igc 0000:01:00.0 eth0: Register Dump
> > > >>>>>>>>>>>>>>> [  156.724784] igc 0000:01:00.0 eth0: Register
> Name   Value
> > > >>>>>>>>>>>>>>> [  156.731067] igc 0000:01:00.0 eth0: CTRL
> 181c0641
> > > >>>>>>>>>>>>>>> [  156.737607] igc 0000:01:00.0 eth0: STATUS
> 00380681
> > > >>>>>>>>>>>>>>> [  156.744133] igc 0000:01:00.0 eth0: CTRL_EXT
> 100000c0
> > > >>>>>>>>>>>>>>> [  156.750759] igc 0000:01:00.0 eth0: MDIC
> 18017949
> > > >>>>>>>>>>>>>>> [  156.757258] igc 0000:01:00.0 eth0: ICR
> 00000001
> > > >>>>>>>>>>>>>>> [  156.763785] igc 0000:01:00.0 eth0: RCTL
> 0440803a
> > > >>>>>>>>>>>>>>> [  156.770324] igc 0000:01:00.0 eth0: RDLEN[0-3]
> 00001000
> > > >>>>>>>>>>>>>>> 00001000 00001000 00001000
> > > >>>>>>>>>>>>>>> [  156.779457] igc 0000:01:00.0 eth0: RDH[0-3]
> 000000ef
> > > >>>>>>>>>>>>>>> 000000a1 00000092 000000ba
> > > >>>>>>>>>>>>>>> [  156.788500] igc 0000:01:00.0 eth0: RDT[0-3]
> 000000ee
> > > >>>>>>>>>>>>>>> 000000a0 00000091 000000b9
> > > >>>>>>>>>>>>>>> [  156.797650] igc 0000:01:00.0 eth0: RXDCTL[0-3]
> 02040808
> > > >>>>>>>>>>>>>>> 02040808 02040808 02040808
> > > >>>>>>>>>>>>>>> [  156.806688] igc 0000:01:00.0 eth0: RDBAL[0-3]
> 02f43000
> > > >>>>>>>>>>>>>>> 02180000 02e7f000 02278000
> > > >>>>>>>>>>>>>>> [  156.815781] igc 0000:01:00.0 eth0: RDBAH[0-3]
> 00000001
> > > >>>>>>>>>>>>>>> 00000001 00000001 00000001
> > > >>>>>>>>>>>>>>> [  156.824928] igc 0000:01:00.0 eth0: TCTL
> a503f0fa
> > > >>>>>>>>>>>>>>> [  156.831587] igc 0000:01:00.0 eth0: TDBAL[0-3]
> 02f43000
> > > >>>>>>>>>>>>>>> 02180000 02e7f000 02278000
> > > >>>>>>>>>>>>>>> [  156.840637] igc 0000:01:00.0 eth0: TDBAH[0-3]
> 00000001
> > > >>>>>>>>>>>>>>> 00000001 00000001 00000001
> > > >>>>>>>>>>>>>>> [  156.849753] igc 0000:01:00.0 eth0: TDLEN[0-3]
> 00001000
> > > >>>>>>>>>>>>>>> 00001000 00001000 00001000
> > > >>>>>>>>>>>>>>> [  156.858760] igc 0000:01:00.0 eth0: TDH[0-3]
> 000000d4
> > > >>>>>>>>>>>>>>> 0000003d 000000af 0000002a
> > > >>>>>>>>>>>>>>> [  156.867771] igc 0000:01:00.0 eth0: TDT[0-3]
> 000000e4
> > > >>>>>>>>>>>>>>> 0000005a 000000c8 0000002a
> > > >>>>>>>>>>>>>>> [  156.876864] igc 0000:01:00.0 eth0: TXDCTL[0-3]
> 02100108
> > > >>>>>>>>>>>>>>> 02100108 02100108 02100108
> > > >>>>>>>>>>>>>>> [  156.885905] igc 0000:01:00.0 eth0: Reset
> adapter [
> > > >>>>>>>>>>>>>>> 160.307195] igc 0000:01:00.0 eth0: NIC Link is Up
> 1000 Mbps
> > > >>>>>>>>>>>>>>> Full Duplex, Flow Control: RX/TX [  160.317974] br-
> lan: port
> > > >>>>>>>>>>>>>>> 1(eth0) entered blocking state [  160.324532] br-
> lan: port
> > > >>>>>>>>>>>>>>> 1(eth0) entered forwarding state [  161.197263] -----
> -------[
> > > >>>>>>>>>>>>>>> cut here ]------------ [  161.202669] Kernel BUG at
> > > >>>>>>>>>>>>>>> 0xffffffff813ce19f [verbose debug info unavailable] [
> > > >>>>>>>>>>>>>>> 161.210769] invalid opcode: 0000 [#1] SMP NOPTI [
> > > >>>>>>>>>>>>>>> 161.216022]
> > > >>>>>>>>>>>>>>> CPU: 1 PID: 0 Comm: swapper/1 Not tainted
> 5.10.146 #0 [
> > > >>>>>>>>>>>>>>> 161.222980] Hardware name: Default string Default
> > > >>>>>>>>>>>>>>> string/Default string, BIOS 5.19 09/23/2022 [
> 161.232546] RIP:
> > > >>>>>>>>>>>>>>> 0010:0xffffffff813ce19f [  161.237167] Code: 03 01
> 4c 89 48
> > > >>>>>>>>>>>>>>> 58
> > > >>>>>>>>>>>>>>> e9 2f ff ff ff 85 db 41 0f 95
> > > >>>>>>>>>>>>>>> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78
> 0a 44 89
> > > >>>>>>>>>>>>>>> c2
> > > >>>>>>>>>>>>>>> e9 10 ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00
> 00 00 00
> > > >>>>>>>>>>>>>>> 44 0f 48 ca eb
> > > >>>>>>>>>>>>>>> 80 cc
> > > >>>>>>>>>>>>>>> [  161.258651] RSP: 0018:ffffc90000118e88
> EFLAGS: 00010283 [
> > > >>>>>>>>>>>>>>> 161.264736] RAX: ffff888101f8f200 RBX:
> ffffc900006f9bd0 RCX:
> > > >>>>>>>>>>>>>>> 000000000000050e [  161.272837] RDX:
> ffff888101fec000 RSI:
> > > >>>>>>>>>>>>>>> 0000000000000a1c RDI: 0000000000061a10 [
> 161.280942] RBP:
> > > >>>>>>>>>>>>>>> ffffc90000118ef8 R08: 0000000000000000 R09:
> 0000000000061502
> > > >>>>>>>>>>>>>>> [ 161.289089] R10: 0000000000000000 R11:
> 0000000000000000 R12:
> > > >>>>>>>>>>>>>>> 00000000ffffff3f [  161.297229] R13:
> ffff888101f8f140 R14:
> > > >>>>>>>>>>>>>>> 0000000000000000 R15: ffff888100ad9b00 [
> 161.305345] FS:
> > > >>>>>>>>>>>>>>> 0000000000000000(0000)
> GS:ffff88903fe80000(0000)
> > > >>>>>>>>>>>>>>> knlGS:00000 00000000000
> > > >>>>>>>>>>>>>>> [  161.314492] CS:  0010 DS: 0000 ES: 0000 CR0:
> > > >>>>>>>>>>>>>>> 0000000080050033 [  161.321139] CR2:
> 00007f941ad43a9b CR3:
> > > >>>>>>>>>>>>>>> 000000000340a000 CR4: 0000000000350ee0 [
> 161.329284] Call Trace:
> > > >>>>>>>>>>>>>>> [  161.332373]  <IRQ>
> > > >>>>>>>>>>>>>>> [  161.334981]  ? 0xffffffffa0185f78
> > > >>>>>>>>>>>>>>> [igc@00000000f400031b+0x13000] [  161.341949]
> > > >>>>>>>>>>>>>>> 0xffffffff8185b047 [  161.345797]
> 0xffffffff8185b2ca [
> > > >>>>>>>>>>>>>>> 161.349637]  0xffffffff81e000bb [  161.353465]
> > > >>>>>>>>>>>>>>> 0xffffffff81c0109f [  161.357304]  </IRQ> [
> 161.359988]
> > > >>>>>>>>>>>>>>> 0xffffffff8102cdac [  161.363783]  0xffffffff810bfdaf
> [
> > > >>>>>>>>>>>>>>> 161.367584]  0xffffffff81a2e616 [  161.371374]
> > > >>>>>>>>>>>>>>> 0xffffffff81c00c9e [  161.375192] RIP:
> > > >>>>>>>>>>>>>>> 0010:0xffffffff817e331b [  161.379840] Code: 21 90
> ff 65 8b
> > > >>>>>>>>>>>>>>> 3d 45 23 83 7e e8 80 20 90 ff 31 ff 49 89 c6 e8 26
> 2d 90 ff
> > > >>>>>>>>>>>>>>> 80 7d d7 00 0f 85 9e 01 00 00 fb 66 0f 1f
> > > >>>>>>>>>>>>>>> 44 00 00 <45> 85 ff 0f 88 cf 00 00 00 49 63 cf 48 8d
> 04 49 48
> > > >>>>>>>>>>>>>>> 8d 14 81
> > > >>>>>>>>>>>>>>> 48 c1
> > > >>>>>>>>>>>>>>> [  161.401397] RSP: 0018:ffffc900000d3e80
> EFLAGS: 00000246 [
> > > >>>>>>>>>>>>>>> 161.407493] RAX: ffff88903fea5180 RBX:
> ffff88903feadf00 RCX:
> > > >>>>>>>>>>>>>>> 000000000000001f [  161.415648] RDX:
> 0000000000000000 RSI:
> > > >>>>>>>>>>>>>>> 0000000046ec0743 RDI: 0000000000000000 [
> 161.423811] RBP:
> > > >>>>>>>>>>>>>>> ffffc900000d3eb8 R08: 00000025881a3b81 R09:
> ffff888100317340
> > > >>>>>>>>>>>>>>> [ 161.432003] R10: 0000000000000001 R11:
> 0000000000000000 R12:
> > > >>>>>>>>>>>>>>> 0000000000000003 [  161.440154] R13:
> ffffffff824c7bc0 R14:
> > > >>>>>>>>>>>>>>> 00000025881a3b81 R15: 0000000000000003 [
> 161.448285]
> > > >>>>>>>>>>>>>>> 0xffffffff817e357f [  161.452123]
> 0xffffffff810e6258 [
> > > >>>>>>>>>>>>>>> 161.455938]  0xffffffff810e63fb [  161.459746]
> > > >>>>>>>>>>>>>>> 0xffffffff8104bec0 [  161.463526]  0xffffffff810000f5
> [
> > > >>>>>>>>>>>>>>> 161.467290] Modules linked in: pppoe ppp_async
> nft_fib_inet
> > > >>>>>>>>>>>>>>> nf_flow_table_ipv 6 nf_flow_table_ipv4
> nf_flow_table_inet
> > > >>>>>>>>>>>>>>> wireguard pppox ppp_generic nft_reject_i pv6
> nft_reject_ipv4
> > > >>>>>>>>>>>>>>> nft_reject_inet nft_reject nft_redir nft_quota
> nft_objref nf
> > > >>>>>>>>>>>>>>> t_numgen nft_nat nft_masq nft_log nft_limit
> nft_hash
> > > >>>>>>>>>>>>>>> nft_flow_offload nft_fib_ip v6 nft_fib_ipv4 nft_fib
> nft_ct
> > > >>>>>>>>>>>>>>> nft_counter nft_chain_nat nf_tables nf_nat nf_flo
> w_table
> > > >>>>>>>>>>>>>>> nf_conntrack libchacha20poly1305
> curve25519_x86_64
> > > >>>>>>>>>>>>>>> chacha_x86_64 slhc r8 169 poly1305_x86_64
> nfnetlink
> > > >>>>>>>>>>>>>>> nf_reject_ipv6
> > > >>>>>>>>>>>>>>> nf_reject_ipv4 nf_log_ipv6 nf_log_i pv4
> nf_log_common
> > > >>>>>>>>>>>>>>> nf_defrag_ipv6
> > > >>>>>>>>>>>>>>> nf_defrag_ipv4 libcurve25519_generic libcrc32c
> libchacha igc
> > > >>>>>>>>>>>>>>> forcedeth e1000e crc_ccitt bnx2 i2c_dev ixgbe
> e1000 amd_xgbe
> > > >>>>>>>>>>>>>>> ip6_u dp_tunnel udp_tunnel mdio nls_utf8 ena kpp
> > > >>>>>>>>>>>>>>> nls_iso8859_1
> > > >>>>>>>>>>>>>>> nls_cp437 vfat fat igb button_hotplug tg3 ptp
> realtek
> > > >>>>>>>>>>>>>>> pps_core mii [  161.550507] ---[ end trace
> b1cb18ab2d1741bd
> > > >>>>>>>>>>>>>>> ]--- [ 161.555938] RIP: 0010:0xffffffff813ce19f [
> 161.560634] Code:
> > > >>>>>>>>>>>>>>> 03 01 4c 89 48 58 e9 2f ff ff ff 85 db 41 0f 95
> > > >>>>>>>>>>>>>>> c2 45 39 d9 41 0f 95 c1 45 84 ca 74 05 45 85 e4 78
> 0a 44 89
> > > >>>>>>>>>>>>>>> c2
> > > >>>>>>>>>>>>>>> e9 10 ff ff ff <0f> 0b 01 d2 45 89 c1 41 29 d1 ba 00
> 00 00 00
> > > >>>>>>>>>>>>>>> 44 0f 48 ca eb
> > > >>>>>>>>>>>>>>> 80 cc
> > > >>>>>>>>>>>>>>> [  161.582281] RSP: 0018:ffffc90000118e88
> EFLAGS: 00010283 [
> > > >>>>>>>>>>>>>>> 161.588426] RAX: ffff888101f8f200 RBX:
> ffffc900006f9bd0 RCX:
> > > >>>>>>>>>>>>>>> 000000000000050e [  161.596668] RDX:
> ffff888101fec000 RSI:
> > > >>>>>>>>>>>>>>> 0000000000000a1c RDI: 0000000000061a10 [
> 161.604860] RBP:
> > > >>>>>>>>>>>>>>> ffffc90000118ef8 R08: 0000000000000000 R09:
> 0000000000061502
> > > >>>>>>>>>>>>>>> [ 161.613052] R10: 0000000000000000 R11:
> 0000000000000000 R12:
> > > >>>>>>>>>>>>>>> 00000000ffffff3f [  161.621291] R13:
> ffff888101f8f140 R14:
> > > >>>>>>>>>>>>>>> 0000000000000000 R15: ffff888100ad9b00 [
> 161.629505] FS:
> > > >>>>>>>>>>>>>>> 0000000000000000(0000)
> GS:ffff88903fe80000(0000)
> > > >>>>>>>>>>>>>>> knlGS:00000 00000000000
> > > >>>>>>>>>>>>>>> [  161.638781] CS:  0010 DS: 0000 ES: 0000 CR0:
> > > >>>>>>>>>>>>>>> 0000000080050033 [  161.645549] CR2:
> 00007f941ad43a9b CR3:
> > > >>>>>>>>>>>>>>> 000000000340a000 CR4: 0000000000350ee0 [
> 161.653841] Kernel
> > > >>>>>>>>>>>>>>> panic - not syncing: Fatal exception in interrupt [
> > > >>>>>>>>>>>>>>> 161.661287] Kernel Offset: disabled [  161.665644]
> Rebooting in 3 seconds..
> > > >>>>>>>>>>>>>>> [  164.670313] ACPI MEMORY or I/O RESET_REG.
> > > >>>>>>>>>>>>>>>
> > > >>>>>>>>>>>>>>> Kyle.
> > > >>>>>>>>>>>>>>>
> _______________________________________________
> > > >>>>>>>>>>>>>>> Intel-wired-lan mailing list
> > > >>>>>>>>>>>>>>> Intel-wired-lan@osuosl.org
> > > >>>>>>>>>>>>>>> https://lists.osuosl.org/mailman/listinfo/intel-
> wired-lan
> > > >>>>>>>>>>>>>>
> > > >>>>>>>>>>>
> > > >>>>>
> > > >>>>>
> > > >>>
> > >
> 
> 
> ------------------------------
> 
> Subject: Digest Footer
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 
> 
> ------------------------------
> 
> End of Intel-wired-lan Digest, Vol 416, Issue 5
> ***********************************************
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
