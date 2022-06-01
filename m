Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D690A539D4B
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Jun 2022 08:36:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D92A41736;
	Wed,  1 Jun 2022 06:36:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gO86BdPaY58K; Wed,  1 Jun 2022 06:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF96741733;
	Wed,  1 Jun 2022 06:36:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26A7F1BF859
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1174641733
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rTLBGiv_yXVP for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jun 2022 06:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22CCB41731
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jun 2022 06:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654065392; x=1685601392;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tRqd3ZlXgxawhGQhwjenMjZ03Hp4y01SuAmPdR6ISbA=;
 b=iQFFXiRMFC+w5WAMnmz4qrTmuZws1Q3zpvvJzOUTgEUAKSGpLTUsKSFq
 iDDbO6p3GGlhgtyY7GdWOxLHXZBJorZ+Ivzq5YMJQWH9fflMcShus/H+m
 dF0lYZVpWU9DYeTsklYSpSH6F5Kt+BksaiorLrhPh4gMntKaTZNPkheOZ
 MU1vNKJAB8q0/DIToDZs5bH1xlw7M9q12zI0qItNGoKAw7Hxc8J23pQPp
 mu4Q4i22EbB/nqL2FNgkaZilmODh/XWkBzU8tK+UNDGx8CZlJLpBHc7fB
 ulBGWX/NWgcvOgFReGOv+mRy85OCPHQY23/98yzafoufJFpTNw+U48x5/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="338536336"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="338536336"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 23:36:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="606096477"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 31 May 2022 23:36:31 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 31 May 2022 23:36:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 31 May 2022 23:36:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 31 May 2022 23:36:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWpVaSHsaEQ2wEzAqEp6p8SJBPJ8HptOxxydInQZwZpMBLn3fHDfZg7DhN9E1X7X/iSHScXPjXY9xXsSFUqLMNSaiTSRC6Cv+DFqHX/DHP5hm80/QhxJ2tms4yp8CI1dB8o7EpUmYbpxxNqXtheIO9nrZlJY7QpwfwFYrCjgFCKsvM7ZdgdixLtqXfKkqBmZqJx7m8FzOFxsMcbhLJ+9VJhMdaVFIfcE3PcX5n5SuLtEHzIYDnUXUTsgTpafEpE7zSJrXYCTOoJr/2P60AxzD2+Cfd2rrbXYL+tQl20pIxJRkyl3m4+vGclGfy1ri2SCmnilJaw+SiCA+TSATGdSjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tRqd3ZlXgxawhGQhwjenMjZ03Hp4y01SuAmPdR6ISbA=;
 b=euh7lIJD8SQv+pRD48L3WyWsQaua6zJ9IhHUvaItRrrn83v4y1pLtVxDeQzYqzeDumIEoWjA5OcIF0wjYNuTWsioTUlnLi/jYwO0WodneMZycE5e+AKYtk/UAwtl82ECKQi1cR3md/2hpOBLI5aoA5gzeuV7IY4RMJm3Z6A7HbIWfKkrD1D1D4qkvpgXimqgIZaV4GawoRcU3cnz3FktVPId7fg+H/maxDtCJ9RToMQCRFhi2aB50lxHrPIgMkyWpqi9LEIpzzeGUhauV8FGCM9m0npKJIceJ9DUSowXCfIqi0xSuISK2UVtsriuwDkFSNc/fJtL5cEGdgpJ/OcLJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by SN6PR11MB2608.namprd11.prod.outlook.com (2603:10b6:805:57::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Wed, 1 Jun
 2022 06:36:29 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::c0e3:dade:6afd:ec6b%4]) with mapi id 15.20.5314.012; Wed, 1 Jun 2022
 06:36:29 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove VLAN
 representor specific ops
Thread-Index: AQHYWG61R3AGXnkyh0O9nbeZdD0kR606UtEg
Date: Wed, 1 Jun 2022 06:36:29 +0000
Message-ID: <MW3PR11MB4554E05C162DCA5853A78ACE9CDF9@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
 <20220425062756.14987-3-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20220425062756.14987-3-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 99bcd87b-582a-4ea2-0134-08da43990f52
x-ms-traffictypediagnostic: SN6PR11MB2608:EE_
x-microsoft-antispam-prvs: <SN6PR11MB26084AA08C6B11C4D9E2AF829CDF9@SN6PR11MB2608.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pHVP9tS5m5Ol3OdzwkQi4VaPzshVdTWezEzjG9LxFTSGxgwi7Xlyfkn7yQ1u3x7yqJmfvnVLPRLvpu5iA7KF/dXXwUxmh4LVyNrJiQld+Wfw9VSQieRBlj5Vj+GyPSYMThRIsvl+ptJ3SqqWHZ3Jn9yTrwgwonGdrp4R+JvcUZHeEyGH2aes1Y4HBxz4VDqGbxoSOs80Licj8C1ZYPE57OYyKtqSfqahUlP+kiunlm4Ac8aooYhN1HXUvzjyZZtcYdI3TTw10umDf3hT3k+z04bpm76E0Ypf+pXbLsX4vqPoZN2yAH5Ry6g1PXbUUfawbS7HK8zqyriT28d20vaZtFk+gVSr2X6BxX+fy/LWYqxWHQUl20r3QjkPkeAa0jY9gNxvP2OBwdFHwALoU0QqzvWQ5s5JFYM5LUVsUVAS33Nb3/ltWm/UIYjNkJunfTSkbvURlEEool0LIkDtWturyIaTw8vO/6kxU2bdyL9Rx/WC0bHrEMt12Tqi+X/HZviAU5NtNWwv2/Kkd774d6aEluQ2xEt0EiOrEqke4V2EFOUboRXGQ3f6l6TJnLT7PxeVBp2B14RIJUagCaXr6A5Mm1LVxDxEDipfX/TMi9P2Kk1gNg3YtUTucqLlSm4cG9/UIVRQLigSdu4kPW1u6qLEdKDv40PqWqUysepnVFChKyB7Vv4y1J9i74IgdjdhmG8x1tQo8cZNePtyUAw6hINNWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(64756008)(66446008)(66476007)(66556008)(66946007)(4744005)(52536014)(38100700002)(86362001)(55016003)(316002)(110136005)(8936002)(76116006)(4326008)(8676002)(186003)(5660300002)(7696005)(33656002)(82960400001)(83380400001)(508600001)(2906002)(122000001)(38070700005)(9686003)(6506007)(26005)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dZ1jVFW/wEHOncebd81wqEBEBM0u0lejaN2hEo/ArBZHWRHid0upD7MHl12N?=
 =?us-ascii?Q?/wDc4ACXcRaKLZYz6qaRdUCT8aSu/oOrCz/FKeX5ZJTaqi9Z/eRp05tn0pp6?=
 =?us-ascii?Q?BUCEiCSEqYK+hK6w1Qu5GPgFk+ZB7SD8t5PBJI7RdpxIfXJX9ZbW06U2VreH?=
 =?us-ascii?Q?PjjJYuJB6/tPmYpwJxXHwizZTc3Q67xFQ+ji2LOzFQQvdU4Ce8D2oe44a5Pr?=
 =?us-ascii?Q?bTqyvBlFqa+uORZd1HPunykJDbIzD/vQXO1j2kg66+X+Qv3u3dOf9H0bUQxZ?=
 =?us-ascii?Q?ireFe03b0u+Scop0PkfvR6lY5Wib8/dBhFg8rdZtwaFiY1noGPfdA23GJi9v?=
 =?us-ascii?Q?g4tTgEJNNiNK1g+LGDP92Ygs+OdAf6wy1vVrnkfOKIG4Q5DoL3/NpyiflJ1g?=
 =?us-ascii?Q?fd1JMz2Dwli/7s5/MByq0r4QyueKS76iIgEk/eM6yvv2h5XV5pFOzJ6pOZdf?=
 =?us-ascii?Q?HUWCOjkrM/kQc2FgqpNbtvaDIcAcwH7Lbp000KVBwDVzccfxM0UK1WYDVP5i?=
 =?us-ascii?Q?rTYfaQoUJdNQ0w32o8UOuqwdwEXLMtK8YnWI6Ryn80PJJF2+jCowTlyBfcYU?=
 =?us-ascii?Q?OXQkMUWBWw8UFmhZEBexzjssmLXkk86W4F5Xh9/RxI8CgzcZ5nV0/nrAg5wn?=
 =?us-ascii?Q?zkGrN5TFKEQxbBq7HLr2kqHMU0vLvR2ZL5dbJPFbTJSS8lYLQEnVJ2O9Iufj?=
 =?us-ascii?Q?a71IE/NdCbuBL4LuTR9+Z03eLEDh7zRdz5OLbYLKjzkH2UOBHEJbCZFIbJMa?=
 =?us-ascii?Q?CtenNqOe7wpt9UrUm9H5UG3R8MF8p08ZQAiKnWRuXzuZ+gjS4+8aSHPDdckX?=
 =?us-ascii?Q?YCzIfnAU20r7av6WWQYsFsmSUG9xJpoHpO7G4dwBVWYnl4aGQPuUFUp+K9vk?=
 =?us-ascii?Q?Df2WzxPTfR/cBWJHv1aLm/PUH8B6jKmipUzWg5S2n557nVMmBzgnAbdKYzoF?=
 =?us-ascii?Q?uFeN1eLKOcsuQ5Vq6u0w2Dl23JDN5ixURo9LaOmo3PzPqETOlPaO0Pnu9Oyb?=
 =?us-ascii?Q?nfnSenoxjQjTmLOxZyPAB/K/S8xsJEs/GXqjCgbUQ4fGlP7K6S9Suc5RKJCR?=
 =?us-ascii?Q?JKAga7u5Mhf1NPShEwHdRsk1yOLRZnL3gQX35UGMXvvkKTlYKp2pw0UdBD66?=
 =?us-ascii?Q?ZKDYjGV9ZwCRCSISyLqb+pw004Xgm4fWem4CpJFD8E7hdfkybEb71Qx8J9eu?=
 =?us-ascii?Q?HrWzJaXZueJJqbZ2dYCd0iYjVyDJdWk6gM2zAdd6Cf6a034mnEAaa3OaAAh9?=
 =?us-ascii?Q?SLNVXhAEOm2N0IexSULgCcEgU6SQVBdrqQuke0I5iWifpteULVHmGV+T2+9/?=
 =?us-ascii?Q?dbSfS7oDNrBzHxxKuRK1YbRjcZyJ2NsXZt6CtHFLyFq4IaudrpzC8U41ucvn?=
 =?us-ascii?Q?2PvmLgHcuohKx0mA5oRvH35eZZRcJ+Iddg8ARdTd4dts7vTLAW442engjACO?=
 =?us-ascii?Q?iR600rxVlQyLV0IwgNesL+EmopoZoHaEtSyrG83Q1FbDaPuUo9g59g3FnIbs?=
 =?us-ascii?Q?yekIAsYtqZaDq1eu5NaloouQv6wDOjPCbw9QQfDtfExNjuIE6669Ook15vAT?=
 =?us-ascii?Q?cxc3EqYHzvTfFtUCCyhhDLkF1+KSOVwjl8IQVGnQT/wEztVG3fuDB4kxGrSS?=
 =?us-ascii?Q?RkMQEcYC7/IkSFI5OxpF7qmpoAbwBJrfLxzcFYOy5v0N4fYOwEpmN6NY4/1y?=
 =?us-ascii?Q?ilt9qiduyfx3uJVMNoASvIMK4ED4Jro1iqI8Yjr0tqZ4FcR0ISrPkBukAzxI?=
 =?us-ascii?Q?poy89YdyOZg+76oNXlPa4jxF/SROQ9c=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99bcd87b-582a-4ea2-0134-08da43990f52
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2022 06:36:29.1799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UvTeWewvWJe/NHIz1f/HTm9XWlzFk8wXAcKHrC1iw4uhuOHCaBIeRtAp6dE3qYxlgXrLY1Mhy4ESdGQC9bInk5WSpDQpiw97HWrLmrLHgQc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2608
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove VLAN
 representor specific ops
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
Cc: "Wilczynski, Michal" <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Monday, April 25, 2022 11:58 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Wilczynski, Michal <michal.wilczynski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove VLAN representor
>specific ops
>
>As in switchdev mode VF VLAN caps will not be set there is no need to have
>specific VLAN ops for representor that only returns not supported error.
>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_virtchnl.c | 44 ++-----------------
> 1 file changed, 4 insertions(+), 40 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
