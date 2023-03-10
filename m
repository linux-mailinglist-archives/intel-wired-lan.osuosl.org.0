Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD4D6B400A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Mar 2023 14:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10ECC40452;
	Fri, 10 Mar 2023 13:16:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10ECC40452
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678454210;
	bh=I3h08hjDX3/c/3ph5u0A0377BiPL0BUKeKmDWqrKS+M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yF2h6GLKqpyPI5sGYf0n2nhEUJI3SRZZluNf+EGV034+OD/h9o8sDvgz7K1hGxp0x
	 TG9HNwJUKPsTt1k5Pz5Bi2bNB+zCNKxm6etxUypB5R7e3zXxckVOipaeDXIMDTz0Ux
	 9eeRl5zb/rz1sv43MUtpU5fMNvREWwSdZAI6VHfz2LxWJiUsq1LuJTb+MDJJ8LBgy5
	 b9+NR1IlXMqqyz7Iy6rv2GcBHYSLUWvTE4NcPfkS1c8uw2FuimLwbY/ZmoqNRIJyPy
	 uL2r1cXijoujkQYNu8fufVJ/PiQ6olMj4jDGnB8cY+H1uwpf3oatAwYbDCeLtJQYaG
	 fimTci2cxHHYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZ4_85VS1PeP; Fri, 10 Mar 2023 13:16:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E458D40374;
	Fri, 10 Mar 2023 13:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E458D40374
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E373F1BF292
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C854C82263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C854C82263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id McEYlWTwv9fU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Mar 2023 13:16:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 086FF821F9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 086FF821F9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Mar 2023 13:16:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="325074775"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="325074775"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 05:16:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="1007116012"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="1007116012"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 10 Mar 2023 05:16:42 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:16:41 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 05:16:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 05:16:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 05:16:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKHTLOYohIYMDDREeb1VxlOHieU3Yzv4nkqVSQSRsVs/X+rPGhXj0MunjR19X1gcZGDbK/9MdTEcZGx7X3F7vsP8XJGiGVHlyvqd+SNLEGj/pNlmeOeIfLlQu2bW4mzwdllfWL0u7AEaQtbLx//gO1BblG/QWa4ApFDt3LMNVsi8KqqSgEFLGaY1Nn12t+m4u4tp40mYNafbbBilTAPHJPDUxPQ1n0LpBg8w3JtUDEIDSKrhy6G9mEnaYsoJEA05NlLWyFGbeGfL7LiLL3TkQ64XPfJouy80X0Em0sZo7plLdiJx31TGEqZ+IhgDPQ4G2NmzEoJjyu6brlm6vW0jUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OGD1JW2LZjkaRM5E4pd0Lzpq0PNnjkLddKZWTQeW1AI=;
 b=mqcrEO7ivd8XfQRIx9vslbS023aQ/HEsc+GmpqKkdohG+lg8l/gTPEyrbSJKXCDYByW7Hw96x5OZArO8XS3hDFjamsRTffaT6JACxHWFyQQiN9SmP5eMCojWlZb3QLtbsrI8l837Q0JgwrvMUwnAdGKlFmspCDidG/HqPMZtJ9c/J6gxc02pkpDJUqxEH93B1l5fPCreeGgbxuf/tUSw5Y4Vk9jcS5yJskKttg5CCZSagcDcWaeY9KAw8mDPIUYey8RAlc0s6a73tbXP+8ei/CAud5o2dMlfRIGQJ/xchU59iHWoP6iPh2A3BNyyMNxksl17bx5pVxQ874NMCGO7bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM8PR11MB5686.namprd11.prod.outlook.com (2603:10b6:8:21::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 13:16:39 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 13:16:39 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [intel-next PATCH 05/14] ice: remove
 ice_mbx_deinit_snapshot
Thread-Index: AQHZRuGEw/s/feAevUaVJox7Mbo03K70F0NA
Date: Fri, 10 Mar 2023 13:16:39 +0000
Message-ID: <CY8PR11MB7364494A5C733E807FE842ADE6BA9@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
 <20230222170920.1629293-6-jacob.e.keller@intel.com>
In-Reply-To: <20230222170920.1629293-6-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM8PR11MB5686:EE_
x-ms-office365-filtering-correlation-id: 8f688587-5e30-42cf-293b-08db2169af31
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hsBW2+HcjhH58VnVMUxdamqSajvFEOGVPvXcn8Ozv0nLDaahArDD9z/l0l8AYXLsxP5wvn+3H60JkW8n+mQKBHDO4LceMhBYFdDg15Npqlj8hVk302YlekHm9S6RWcovANLLELh0ICoiETkxueC+ANr5eWp9hrrBs0VrijhskKlqG9FDWcYQ3DAItVl9XlXrr/k8EorG95ukSdMf2xWtMGHDMfBAGH1pbhuJl8jNLpGuskdUR/yjMQo9xpSu4ZYwsXhoCKsV/0+Hv9xFEJmk3cXqeKSQUB19uWY1MVwtqMtLKRlUiYuV8Opdl0eAVb+HiATpegxAtNmCKOVmckx2hZgJCUxm7+xUhktUsWPyrVTLhdxKiGpPqpsPjYd/ygra71tR0FsqJdkz7SmH5ZmrIltCa6F3nEgn5SJJwVVqu/NaaqXNWy0ldoGpF/ar1UeSsUBOYhH9BT67ZSI3O7y4QYA4uLqgR9JTgZqPlNaEG292unjgZQffBKz5yJ56JhvdR+icewXhMcBETHMOorC3TUaBd7+MNyeankLtY5OkzknF5nJoMce6eXTNwemf1cpo7/RgTvjBxKEqlgirwl4GKCwZMB8stieTBBsSR6Arsd19ReYy/OW8TSJkANDX6Ltc0RqfoJyvRKbADnaVb09Sqt58fy76c9rq0vlpPqH42lLnJyH41QZIq+kUGX2PDNBfoV720OlM89f7lowYSEEPbg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(39860400002)(376002)(346002)(136003)(366004)(451199018)(55016003)(186003)(82960400001)(7696005)(71200400001)(33656002)(478600001)(122000001)(38070700005)(38100700002)(316002)(86362001)(6506007)(9686003)(83380400001)(26005)(41300700001)(53546011)(76116006)(8936002)(5660300002)(66946007)(52536014)(64756008)(2906002)(6916009)(66446008)(66556008)(8676002)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?8JwrdQYJ99HaoeAoQAAOFcSYqJCp20eDcKt+cR1QS7ImM+r2dEMf5NxZQr?=
 =?iso-8859-2?Q?Ox4ciFcp7AQ51m5aeIcIXvxkLy2fXPxdPmKcD/KqD9PH46qFKo4UQEecmJ?=
 =?iso-8859-2?Q?zrcvWAKR1EVcpcx5A6Y1/yf2ucgjMyZ58/+VauwbZpPc0Xd7s4Bc2Kq29h?=
 =?iso-8859-2?Q?TmFjnBxhwOqoDOCrf3Fik6sLWLsUJK1UaZGxsh5WtRhfI513c4VgQ6mLK5?=
 =?iso-8859-2?Q?MptezBJsSIwu/ib+39FPxH8nbYmMbrS7D3B4uS9ZbYAmz0dfO34hEHr3FP?=
 =?iso-8859-2?Q?XzIVYV4uxjjHUcAwOWEcPclO7YcI3glJLy2grzw6viBuWIhZqu4rqoqNEc?=
 =?iso-8859-2?Q?a4rphkWvIseO5P6WE6voAIkWNC2Lku4Ryh7klBkABSY5PvS31wAjLZmZVZ?=
 =?iso-8859-2?Q?OiBmJzW34zZ2SA5BejScSkE7t0K5528qBiIbSW5kdHNQDSkVza2yjsNwLD?=
 =?iso-8859-2?Q?l1xhUqYl/MCBZNruPaTTbNd2mnvwe4VNfPJhlGHjy6vOY16Rm93QHk/qsp?=
 =?iso-8859-2?Q?7ezOL1dD3V0iw1VLKb4XXrsaVgVqgwtWSAC6BFIvv/Buv4/Y4zWRLEuKdN?=
 =?iso-8859-2?Q?SayQ6wrhYNtw/cMpg5OU5EIo3DWXpL6jnfGqJwHOrB+z0o89YrXKKh3sYG?=
 =?iso-8859-2?Q?Bmc1qA7OuS3ceUGS0L1kf48obWERAKIgzjILrW+NO3hM7FstnasSvRAh4N?=
 =?iso-8859-2?Q?AmsvV2kxT9ZPbUtIl01KskBvugc/WWJZWOwasbLqnHmxjhHrJIIHylL1Ym?=
 =?iso-8859-2?Q?MQQD4m3ZT2bRD0IXUpynF61d19+1lVeo7rbeAKXjHU69CaRYKRw98fJsFm?=
 =?iso-8859-2?Q?JPQMQebiioHS8/V9EAUunrUVKGizJLUpvhFKOVzSb7r0+3AXgDmrVlq+F8?=
 =?iso-8859-2?Q?KH2SZXE8LI7PVA8Osxn0AJxQuJz14WptLhSTd56UVqpKPTY9AuB2x5zsa4?=
 =?iso-8859-2?Q?KU8mcUWnhnmW6M2QwNgReli21TCyvgzc57sk0JqEQNNh/5upQP1Qan1AQV?=
 =?iso-8859-2?Q?gWaTLCuxHI44b1wMAUO02E/9Mo7fKt4hxL6sIHu2qgH5R84pIHj4OItxmr?=
 =?iso-8859-2?Q?sDXIrL7PwVZOE3p9OocE9dYI6+xcnm69E/leh5KicWFSPce8X0SfbHpvgu?=
 =?iso-8859-2?Q?8NfjxPoK32MHdYaGAVWc/WwcTQ22QtRPHe1tnSl7fLNJjppkCx5juqCit1?=
 =?iso-8859-2?Q?pvVUptmCfMVELOd6QyIA978+s5wW4jQ779+uEN9uGmgpZbC5ihI2PHkBCv?=
 =?iso-8859-2?Q?64HvcoJ3FKUQ8wqd9KzOezI1gG3TQt5u+7xx876iYWqFw6D0hyEmfUq2SP?=
 =?iso-8859-2?Q?C3gB8ZSSHi9BW33uf3mh0wt+zdz5Xl8eMGPkfhuUDMv3hFbM3HIECmlQKa?=
 =?iso-8859-2?Q?jtO4ASNgdX97rqq2EdzPeDDmX2cFEw4Da0IC84SFu1PZxT77IVBFtd0pvk?=
 =?iso-8859-2?Q?zVKlJeIluoXLzm/pn/PUFm7A1+X+xmYmgn/zvZENQ+KvXVbfxhdvycVsCy?=
 =?iso-8859-2?Q?0jF6dlmsuroNIP1SjxwQDLGGUmSWk+jUah1w9Hclh+JbbxJxGEXoqjZqpJ?=
 =?iso-8859-2?Q?lnojksfIEf3lvLhl4mgmZNBvGsEb7oosuhqQZUhGT7zsLxi4aVjsuEJcYu?=
 =?iso-8859-2?Q?ZjYY0//BZv+G+r12RCQS+uXn1qQBF978rD?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f688587-5e30-42cf-293b-08db2169af31
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 13:16:39.6949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JwYhY1mMrP1F/WsQTWOeHmeQoAywNROwa0C0K4jH/54cF3rG9o1XYGAVcDBfnWRsHaxM5PxJqi2uQO+6pYWJvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5686
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678454203; x=1709990203;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nTvI0Z7elTMRbGxwntAVGmLDrp5/3wdgPybd8bssEyU=;
 b=lqKEtkHffyZb9A4rZqqMlVKciwD/kvNJPHoRYSnsTM+2X4ghhIrKpqzS
 whbeO1FGeVpQ/Jo7SqrYwiRDv1ohWKpqkvfY5l4BmuMuNk4IdABMDC/+h
 DWhLXqu7jXAhObHhiHCYyLnUz2m5d4RoQ5C4cRbOM/oo6J4hJOUSQEc83
 z0faDfHRfZ+nWD33xGPM8W3Wgwb7GZ7UsHxwbDYu5TvS/armPRRV66TDa
 mVOtUfMlpGbnYitzzds8VWrf8UHliY5Zfjacq/sOBjHrU+J8vjOw34Vjc
 +bkzL4W9s+8YeVWzKwOj3syhHZugzZBom4lG3ke83kpKjcDwzVXLBmm4V
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lqKEtkHf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [intel-next PATCH 05/14] ice: remove
 ice_mbx_deinit_snapshot
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: =B6roda, 22 lutego 2023 18:09
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [intel-next PATCH 05/14] ice: remove
> ice_mbx_deinit_snapshot
> =

> The ice_mbx_deinit_snapshot function's only remaining job is to clear the
> previous snapshot data. This snapshot data is initialized when SR-IOV adds
> VFs, so it is not necessary to clear this data when removing VFs. Since no
> allocation occurs we no longer need to free anything and we can safely
> remove this function.
> =

> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  |  5 +----
> drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 14 --------------
> drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  1 -
>  3 files changed, 1 insertion(+), 19 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 8820f269bfdf..b65025b51526 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
