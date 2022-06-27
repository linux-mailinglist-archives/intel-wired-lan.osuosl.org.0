Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2463B55B955
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Jun 2022 13:03:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2A2882D04;
	Mon, 27 Jun 2022 11:03:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A2882D04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656327823;
	bh=wTg2Uk2hV/bIS9MWKHrENuONM75H5zr2ABlzqWE9/JA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A4i2/WivgPD7CDuDiH0UqGlKB0HkZfXM+/Lb/vJdoF6d87otc7SJ0syR6YXd/QldT
	 olnvNGOBVA3ZTQUISkikbxjjsWl+ZjmgcDuDrVZVmR9Ji6/e4HpuLLAyWH9OKyTUGR
	 TugkwDJy+aoNe+7Wfj6kQjuNhvKG5wx4jJp7P9arVEy5kjfiSpsoYMHwlhzdN+EDg+
	 0502NV0asRm81tAsGDJvnMkURtXtmbi+VekU4MtJaIlQGonoOhBt08a+ZpKBx1AbzN
	 W+1woTp3MM9ZpTpIpdnhGiIvUB6hOtF3vF780vB0i910D2RnR6MrXNdDAgvJ3tx85a
	 qDR/B/DleZwJw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4AZS33CGE16I; Mon, 27 Jun 2022 11:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8A40E828C5;
	Mon, 27 Jun 2022 11:03:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A40E828C5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 82B251BF354
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:03:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 69A65828C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:03:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 69A65828C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zj8UZJy6HvSz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jun 2022 11:03:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3BE582846
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A3BE582846
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jun 2022 11:03:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="281463633"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="281463633"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 04:03:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="717009528"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 27 Jun 2022 04:03:33 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 04:03:32 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 27 Jun 2022 04:03:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 27 Jun 2022 04:03:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 27 Jun 2022 04:03:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLMJzUNPAfStc/BJHAETiAYwBASeOu8XTV/4ir7nHrjKp+XqgJ97UbZK6BAZvXrnS+Ad6Xfto2w1NA9qH4L+tgTVSd34F0mlwiB1H7gdbYVLMSmBGrseHm3GYzW3QQ2oPmX9GqWTUOGRhKGmhxY0Ep5P6Ix5sYqQeJJsfta+bk74JLY7O2PTH19UsRvG6v0SwdGEQwXcuiRgA2JPb3+pcGNmhtK8xJulQXMaxgmft9YO59tHBN1SmbpBHeGa5hDzIjGa+Gob5CFQgC4f4Y14yxJXhf29mvTxxjFowDSWP+Gd3AUVcoB8OXLPPqXbvqMSv1T7yb6QfwMbRbgUgG2MPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HRXGeJAIq8NJCsYT5v+3g09X/jMAUr85hQ5oznZDYrY=;
 b=KsWbogcPgCxqTm7VoKTviaGHK/d5ttXUNXP1BJH9gejxn1NRmsgAecxjDCofaWO+rJV3VxQA8z88hVywwkmvcKlAokMKEWuAGEgdYnM1jOKve3xxAK4Xm/NwRkJKlASOZMvyQ58vV7zimGRUBEH8GpC9VHU5/lk6Jzi5G9cvmb1quV+ssFBTx5rPPlHuCY4A7byXpnxQPrbm4HQOO3u4hjVRRFcaq1s9sGL1QjxwTqTRpttUUU/r6fLcEQ2o+oK5ysGwENXclu/ydUOGhvE3xJiLjJGv72Lg6UdyJZRynOc15I2Ntt1o1bAS+wUmkxVp6Cvc2U7TxVmAdpVLcqKvsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 SA0PR11MB4703.namprd11.prod.outlook.com (2603:10b6:806:9f::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5373.16; Mon, 27 Jun 2022 11:03:31 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5373.018; Mon, 27 Jun 2022
 11:03:30 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix VLAN_V2
 addition/rejection
Thread-Index: AQHYfMRgm1xlqySa6E6VJ6Eh37PHfa1jMQGg
Date: Mon, 27 Jun 2022 11:03:30 +0000
Message-ID: <DM8PR11MB5621890968560ABDDEFE1817ABB99@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220610121554.3047245-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220610121554.3047245-1-jedrzej.jagielski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1b4c56a9-f033-482b-e236-08da582cabae
x-ms-traffictypediagnostic: SA0PR11MB4703:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oJCvo9GbDMI74+O72/WlPfgGLsoDB4xrMBS0dkLWBnzNLdelKD9pXWy00+NZoUclzB3FAuqDGEmI4OluHq2AH6VyB4IR1uCEb2VcpbomZq267ZzsifDSBlHx4/s5VZ6HJrJmitbCcqNvIhfqagBh+qZMAKVNB5IIM0eZkTWvW3TKudxMTaNbXGPf0UZ3eYfXpoALWyH1aWKxZoHa9UC2cWmVSYRAMgFTl1fLCoVAOX18baC0gjfH6QULW30BXzICDdDRN0XXtvXDIzKz+uciTWxp06pQrQ4miOfMBp0wGSyIdrC1MY0OSv4YBn2uzHE+S6nv7A3bYUKdWDKAIqSx7r0ANy7F7hbB0DoVAe25wb66lvHjI9wmpKVB8LkY4OQ0BpQ348hforXv1x26Q28XrAXVgVKYCFwCxNtsVg7t0Z4cYlfERQrJ5VPXz5AUsXEeOIYIylVWJK47BLhQmkDz10eZDKCs14KYrIYdg4DYTMZkqcoza4/q2iC2htjAYB/fqPuS0nlRQEtq+XdgAz34kwFdWFG8IdtXpbQ2wZVInUi8gazTxVBV8ey3jsllvmupnqRr0rjydFj7dSTHCtLbm+3eKorlPZE0mbI4ao2hmS6SH689YWqCoCWisBfm4AUqoCtopbPcF2XlUAfgkeNb7TXkHzf3Qz30oBJpnCahrHEVZ4ytVagJapnyX+l9ArRcqsU/bcYmfKjdV5zpLs46g0Nq7Z3w/l/4TQ8Pl6hYsdaVQTqjLDzoCX9+Vc2zQdwixcvmgdQCIdroWEpqP2sMPhp0GsIS39oDuuqcsI5PTO4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(346002)(396003)(39860400002)(136003)(107886003)(8936002)(54906003)(478600001)(66476007)(76116006)(66446008)(5660300002)(4326008)(64756008)(110136005)(38100700002)(66946007)(71200400001)(41300700001)(8676002)(66556008)(2906002)(55016003)(26005)(316002)(83380400001)(9686003)(82960400001)(33656002)(7696005)(186003)(52536014)(122000001)(38070700005)(53546011)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+VVM629hgnHxS/+1pUe4RXPppDKA8y4zQUeMH0xXmep/V91i2q3HqICNuJRy?=
 =?us-ascii?Q?IK4WbSyJeOPPkBnd1rNhL2Ak2jcQZ0cRv2WmgDJiJEHbLGXETEzP203FbnJC?=
 =?us-ascii?Q?QagN23PH73THdxYbPaTwA6+10w6tf/aFwIz9ZqvuE842bWv6nt7TECa7rSLQ?=
 =?us-ascii?Q?RoatOc9QKgHzCoYrKb0iXoKPPvzqQJ8Pof0vm3uvmkGuPbcOON6RjwmZVq1P?=
 =?us-ascii?Q?VznrwQhRHbyswyZjak5T6KM8J8MUyjxTnSGZE6Fl5wL5cqXqEyyjKCO0usKv?=
 =?us-ascii?Q?aKMdaZONMaMnPkX95zgjxM4Iv4ja3CRLrMI1RBOS4YL278va5m7HyhTiifDk?=
 =?us-ascii?Q?4j5roajrpMf5IYlAYkBmiG745bNaNgT586ulfGFsHsoH7svC4epnw5Ujz9Z2?=
 =?us-ascii?Q?0q24GdPF4uOuSa66TNfEKRIKbrFRtmRbsTQUNfp1CrYUf1tjfa+QWURaNQ/u?=
 =?us-ascii?Q?icihloI1/QRdAKM9pXzPK+Yg2uApeLIZW8W3NhwHvLGr0vnflf3upqWM1xrY?=
 =?us-ascii?Q?MvgbWUzKShUqghlIjvMAyinWnzoULVXNSYggTfve/9eklFlPRtated2A0iFJ?=
 =?us-ascii?Q?AM9Zp7oVotosFy4jMGr3Tz+vcfAA2ZQGB0MhUfc8sIc+9m5ez97/CHmSPQhj?=
 =?us-ascii?Q?FP+Y8OHCIpSkav2V/uTpOM2OB6dXKxiqLcwuV1tA/KlfAIq7pZxUgXdG3K6n?=
 =?us-ascii?Q?Lh0iHupj7XyRcf9UEyvXgVMVcHC32OP3u8NfrkOXVVgL5WnDHBf4Pj7nvXbH?=
 =?us-ascii?Q?hi+BPmQGuoEQwKkXxAJHO5RdQBGDuWIkoYxUmbVOArn4t8cUAb7AY15xQ5mH?=
 =?us-ascii?Q?gjJI7Pv9aNdaoJH1fdLyxAw4QdnLd/2YPmklXTN04SGrYZmBXl6Ye66t73E7?=
 =?us-ascii?Q?EpUsFBMxsDgJAZemnN/asjvcb6x/2MIQ0OyWp53MKeR7iOtidrPP1ndM7M6S?=
 =?us-ascii?Q?MpFp/7Z3ebcEeJ88P6l7CfQdwA7geJshLqlgj3X9yr7znXKHNCFeIop2k0Jz?=
 =?us-ascii?Q?DUuWnn1td5nGMimA7cILZvPW61K7luYb8LiakSOx/hT/iquz5Y10qTeaX5SM?=
 =?us-ascii?Q?fVNmFBmnlu4WlCjRH71cDobmeojk/okiUuF//gwTJvGciDFMYERRjowIkxp4?=
 =?us-ascii?Q?sn1JkIXBva+KkvUzGwJdWaPUX0Ygc1ndWtw1pruKCG4iZoDqfeqbwxUKA8e9?=
 =?us-ascii?Q?B44IeYIuXageXcOhKsTAYoj4Ysvifj+V/kGOlGFMc6NPsAMPzaVeqdfZwSxp?=
 =?us-ascii?Q?3HHdi4m1lEYqxebGa6lnmLdOIuZgV5b05QurTksgbp6vlFhy5dPHUuO0jsDI?=
 =?us-ascii?Q?IqYz2EGTq1O79YflxDfm1qzNXnWHeYt3dc09in/XxxLnjSop3Xby2bQpI4lx?=
 =?us-ascii?Q?2aL6uV5J4I82NfT4zVyKB8q7C5iSMjpElezeOUUhwTPbWFzLe2aeigWmB+YA?=
 =?us-ascii?Q?OOlsOl4BcCeXGdArIZGh3mYPgd5O1GNN39ZRf6qwrejjvE6qT6qGOxhGnD6n?=
 =?us-ascii?Q?wtEEgzOPJmOeW9OzWxix6gC4mV1AHZJLptXmmLQQ23aceH/EPLO7TGQTPp3m?=
 =?us-ascii?Q?6SKCU89XeOwlYGK7yMR/PouKYBayeUOLD4Nzl7GGNql7Vn9W/qZG1j2zsJWt?=
 =?us-ascii?Q?Pw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b4c56a9-f033-482b-e236-08da582cabae
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2022 11:03:30.8048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: L23p/UfaetA/gJX4lE7oM6pYTdg9m0Yd1l4WaobV+3Dkj5cC/2mQdPLJmVN4UWIZ6Heh4Uz7lIlvD3mv8s8W07HcGdDnsgnD9COqojTiRr0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4703
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656327816; x=1687863816;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r1ReYLSOC0fr7V5KL3UirwZp49J2wSvZUEx3TE1ovhg=;
 b=EFzlc2a70n3qRG7wGBDT9vGIudnGPENhHioBDNRdVmFueLcz0fSIqesB
 Uzhd1O5xRVqPDRctTaWoPex0MvggL0QqtjLII1wRlBIZDY99dm/n68hxi
 uMrLSx5Ozi7IFmREw3699FrA5mlEqgTTKcc334X71/QmF4fp2MJtA5vkQ
 APJOdtWYhiic9aQsAh0jBUOlAS9G6Uacw4Ewl1MwH0mFY6Ks1/bG3vzAA
 wMxKs7n4rxVOuEP0DM/fwI/B2Hqj4Ash3TXjmDeHv5E8pva5LJ0Bs1Pvg
 85Wy+0RPMyF6HnXCHEPHKAQ9qGfKqd/KlpbLMERwbYV8pm0WLo31m3FQ8
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EFzlc2a7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix VLAN_V2
 addition/rejection
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: Friday, June 10, 2022 2:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] iavf: Fix VLAN_V2
> addition/rejection
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Fix VLAN addition, so that PF driver does not reject whole VLAN batch.
> Add VLAN reject handling, so rejected VLANs, won't litter VLAN filter list. Fix
> handling of active_(c/s)vlans, so it will be possible to re-add VLAN filters for
> user.
> Without this patch, after changing trust to off, with VLAN filters saturated, no
> VLAN is added, due to PF rejecting addition.
> 
> Fixes: 92fc50859872 ("iavf: Restrict maximum VLAN filters for
> VIRTCHNL_VF_OFFLOAD_VLAN_V2")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  9 ++-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 10 ++-
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 65 ++++++++++++++++++-
>  3 files changed, 74 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 49aed3e506a6..86bc61c300a7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -159,8 +159,12 @@ struct iavf_vlan {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
