Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADB7716046
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 May 2023 14:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC4DD41EAC;
	Tue, 30 May 2023 12:45:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BC4DD41EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685450723;
	bh=k2z3qE49Fu68jr76hrQYg2Al6ILAfWkO7WTlqdTQQ6o=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HExO2RVtjCmpH/MkpkMGxSybiQDh+PSf6jr1SvmQsGQvgOJ6N5ONffzFnBXFW7cE1
	 oRAbYmg8CC1WUjXPrbOKf5020BCmHGMZWMLuz6+ajUQjuTXERNNngzaJR+y+1ys3/I
	 4tKD5G+gLW9MkWyiN7osR33/PMtV3rgYsRgWX3+oPIshFa+3I58yj+bmshYvDgvwxv
	 HJYI3Lnr/7WqcCMPxjiPtvX40Epo3uv0XFNIZLZIHXezpxFxH1UzSV0M2EJKL1Ns/T
	 Z9A7PsNZ8cs3GgIsHp6cYqwKSzs7SzdDQB5sQdllMvN479ErOOlqkgTz8F910V7/Ze
	 BRJiSVS53V7dQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gGkWjxaCG_LR; Tue, 30 May 2023 12:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 945054185C;
	Tue, 30 May 2023 12:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 945054185C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E7491BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 62CF541D85
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:45:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62CF541D85
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UfYGvxPr5pAO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 12:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 018B140C19
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 018B140C19
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 12:45:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="418386440"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="418386440"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 05:45:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="953118803"
X-IronPort-AV: E=Sophos;i="6.00,204,1681196400"; d="scan'208";a="953118803"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 30 May 2023 05:45:12 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 05:45:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 05:45:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 05:45:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CrHGAVYZqjanB64CoSvNlPczXmdFKWJr7oCJrZ2h9FbnlOvS977R/ady3YSnf7ZgaaAF+2hwqaoBgRbU1s3UI1RxeA/gKH5/irH1CmXbFNwAyRyxF3thpOQ4L2Q3BZI1MTeFyVuwql61416E5LEfTM2WyECh+ueqQhE56tkoErCdvapDy0Ww7JW4DMTITwre6GQoXEOOjfWA6/uJWAcEAsQRAHG0taNgajZ6VPqCeNP76C+Jr3ymiTZSrXtlgHv2kX1CQ6SAdfSK4kUYQDN8ikclJUH2UZP48ICYKYZU/QYbAZveMFYe5S/3RmyaVSJMcRtIprpC3Un5vfZ0SkJrlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTbBLMCPoNmHqcOgZFUKNfwpR2gs/yVjvpp0yAMebkM=;
 b=KGn0mEn7lbnNu6aPrUZPSG2QqpvZ7gv7VZzfz9Km/cO/Kz+rgUSJpNetqZzz1R5XacQkF/5o751aKJ/GoygugVQBpukze0ZnUk2i1nSSn2u3Zb3IbRwO17Ee+fKkJoGGUKoohaY/Dq/hCBRdssm5x89Ep7b113ezl+Xtn7VlFSFXGPz4jD2f3fkiBDNtDKNahprjmRlfnEIve1OMUywyWz8fN9qYL+N43NN821EZBt7wk+mPkcMNX/cYkgmnXTUhX3jHDzjijlffTVN7U+RNF/ho1Z1ADZheg5Pvf6eL1KaeSNzdVA6E2+8rVYjvraoWiJt8FeGXuty3XXh7GMQTIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DM6PR11MB4611.namprd11.prod.outlook.com (2603:10b6:5:2a5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.22; Tue, 30 May
 2023 12:45:09 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%7]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 12:45:08 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next 2/5] net/sched: taprio: replace
 tc_taprio_qopt_offload :: enable with a "cmd" enum
Thread-Index: AQHZktgAC7WC0zvhxUetMgWSS2amiK9ywvjw
Date: Tue, 30 May 2023 12:45:08 +0000
Message-ID: <SJ1PR11MB6180833367FDCB3090AC957DB84B9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230530091948.1408477-1-vladimir.oltean@nxp.com>
 <20230530091948.1408477-3-vladimir.oltean@nxp.com>
In-Reply-To: <20230530091948.1408477-3-vladimir.oltean@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DM6PR11MB4611:EE_
x-ms-office365-filtering-correlation-id: 60ff2efb-30b2-4a19-bdc2-08db610bb346
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MPF41fPRcMjvYHjWqrRE0BXnGGkFRT0a+m22tYsQ0zk0deDpbomEieCRdVvbUw/Qp9O0MRBIVZFZShCk/CbLM7z1rBYzuS/8/CG9URIlBL6vZGu8pJ5XzYw38cH5kxJ4rHyFD7cb+BMPgUC63U5qZMbNAdiQnQSrkRYc+4lhE7Ia5zwn6s20FGKGH7PtR7+d2vGU+q3MUxHxUQ2y8wE0O9I0iYBujcyVmaULch/h99wx6dQolP0v7Q5/hsAfuR3q12xUiCgb9NNxmrC7l9h9I2uNG+gdaCVR3wVtcf5gwMdYS+9yz16GHgQKyMJBKbHKs7wbTD1eqDeQfN2+3CScUrtOzt+yTs0I0KEdIdAkY6lZ6760taA9A9xhCdcV7kRWkJTegY2Kk7nxGNm2tAfx1d3uvSau1otSSeTYwAVK+HGVOMVAO2sVRDiUgGMip6ROtmV3XCac721f+3gsFG2OfEdj2NN6OXoRpyfmI5QEFUoi6nYh4QZ3OiMrxI+pVHUUdVF0zHhVAyv+Sv4ZkHufc4z07M7veKC8GxNuQyQha1N1ZXOV8oJ3Fw/QnJ+EW6wUynf2xh8EbYk7gjw9mcV49dRP48yIHvbgr2lxfQyLodzsoRdegDHibpGjQCX+kDVC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(39860400002)(366004)(136003)(346002)(451199021)(83380400001)(38100700002)(41300700001)(6506007)(186003)(7696005)(26005)(9686003)(71200400001)(54906003)(478600001)(110136005)(82960400001)(66446008)(66476007)(66556008)(66946007)(64756008)(4326008)(122000001)(55016003)(76116006)(316002)(5660300002)(52536014)(8676002)(8936002)(7416002)(2906002)(86362001)(33656002)(38070700005)(30864003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?K/VrHvAfjNTDCnuOJTQxUwix/YfnflRVr8IR/jjwRu0MvYn4usY/a93nG9Tj?=
 =?us-ascii?Q?BFhmYTgAi0eK7Y68ISWXwFADa/bPAFnPuzyxnksFRhE0FXI1H7v14UVQ0C7i?=
 =?us-ascii?Q?jtQ9ZTqKiEJt6DGjoVSRdWothliBelLl50/WMfwAZrzT8Q761K5+HY2NKYKX?=
 =?us-ascii?Q?jBO8qMsd0SdlFKxZ8fuHb16BCE9FSd+WEkSVA2mLdahjiPfRHI/F6bVFacTb?=
 =?us-ascii?Q?1+9URNmoo1Y3dKtRu103EARjsYw1j4+P8IJrVbVX8jzFY23B38VuxOdJgnhP?=
 =?us-ascii?Q?Ujto175Vn8l3H5EsMvWmqM3qyZPDcZD4poZz9QNnHzmXeCq3Uyv3WLGVu+hw?=
 =?us-ascii?Q?mxY+Q6t1H+oPJ/gO8ozycwbzjPZg6IsSKN++5VPgd4Oyak2+UIHq0Mc/etDN?=
 =?us-ascii?Q?e5WuOfVRiCQvLlmhK1E45+iBVOhHCmQc8EdkdOMoTLlv1svMT7WwM28V1Xav?=
 =?us-ascii?Q?bu1UM45Okpqvs6Hy6YmOKOP99fmED6aI7Qzbl+QW2uCJNmyL5IKTfdOKa7zB?=
 =?us-ascii?Q?vFOPFAnmA3l1VHzWK+8XBJQeu/sA0ciMkUxt3x8PgqITHcBXqCuIqENnxhhU?=
 =?us-ascii?Q?htVUQFSHKrRqpSpIZZ03rug7Xcx0xcNY+AZJOulZ5NFIuNUFGFpJ4Ct4Qg4v?=
 =?us-ascii?Q?fDN+4KwmJG7pJuIBsXprjcrsDZpK9xgaeux431wYKwc62SMucasETL0loIko?=
 =?us-ascii?Q?GoWe3aq3FDgVaWvAhNxCrwC8dC0SVRA/JulmMx5yt4fKzstKZtopzcO2CeRg?=
 =?us-ascii?Q?IsKIROvkyiTQwfiV70HveO8OnvsVGwJcbOXirosheIWNBoa8DaBQUBImk0GB?=
 =?us-ascii?Q?jCZgnihzlNKDRFtFvgFG65foPsK3MEXFxR7C7qOj3qq/BEiJYIOF9OXoWsHe?=
 =?us-ascii?Q?ViQ9u8Bm545Gr2zUMHmguCwn6jSIetBXiNeKVXl6YX5W6GIStioH9/8q687G?=
 =?us-ascii?Q?SplW74u/SlGsjY93jK8ds6FVfNdLqlqRHLghAl+AIYMrJS62/Qh79vFq1TiE?=
 =?us-ascii?Q?4Ti3wJZ4vxtBTxMXb2bHvWagoXPL7t53PTnytbqkcImnyUm7CrSlBNc4wB68?=
 =?us-ascii?Q?SZ8H3ryDHX3mfNzbzrSQl7XbrVRhW69RsOX22m9TfKd1AhGsjTFeBjbUQi1v?=
 =?us-ascii?Q?lqo35AskRrqH3KtVa18TpaBSTMvI7xpOaoPNiK/8FoCicvmzlgRLNdHZbOzh?=
 =?us-ascii?Q?1cmMLOhheTJIGzaHhvQIop1K4AggNupZNq1LyQ0holuAXn3KF/0NNInDm8Yk?=
 =?us-ascii?Q?WNfx+kaTq7X5a+cSa8bsfwpyNHtLAkDE+SeGFHvO6m/gmQcDoSFm+DaNMOor?=
 =?us-ascii?Q?ZyoA7m6xd3L07hUvlRi0RCIIiVhiVTnIYLia7CuZqQnjFMz1u5/l47g7G8Kb?=
 =?us-ascii?Q?ykw2p+HFerXyzTHOicFwjDnx0uV4dth7Hve3OOa2aCH0VHoDkhOb1GMaPSmD?=
 =?us-ascii?Q?N/OoE3h9uSKrhlH3Jeos1O3+HF7G9XQtYEPC339zK175nQHAcOOzXjYSXM3N?=
 =?us-ascii?Q?fjDZ4NUq6oYJVnmIIdK2bqZUuOlA3brFeMXU7D/ZDIWbumNi4PIXnRcUsXEa?=
 =?us-ascii?Q?u97nktWWNCZwjNkP+4c7W2yGL6+C2vSDzQxab1NHYjYPiCByabgEKrWdPu/b?=
 =?us-ascii?Q?2ma8lzBJBZRci4oXOkS643Y=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60ff2efb-30b2-4a19-bdc2-08db610bb346
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 12:45:08.3191 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6YgwxWuMFhXp7/VCdeMzU2+zlu1ja3U3whjcTNidwHdhoBLB1ncfzM8wxe0PUZp/mCKrdcAmFXGQ2GluUAgbaKHi3mZv9Iz22+qkclqb989ShQRGAaN3TZzmm/qNmwsp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4611
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685450715; x=1716986715;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8JaU1i+a97C+kWiGRZjbr9li4X0pHg19O3/J5lFhal0=;
 b=eSuC8fEoquLv3w5O9V1SkTZpm8I7cRUmxyfm+H6YFuTlOWT0fUyKpaR0
 XkVQTJFFYeLP4T5dbuYxczU/LZYnHVtsz5jZhlW1AeWx48OJiZ9YmfXa3
 cD0CYIL+fPTqAX+333jcFuMzkeSa4DWXzY+dyKFwoKU3APKEwQBOoP3h+
 eh99Pv+5eWt56CjhM6ezjnDiv8wU7T1pXfg4CdtTowxkErbR2gluC07aq
 hiCz3A/DN/V/oGisaXBeWirwI2P+NMX3CP2W95iF7/fyiM8WM/oPhEggc
 ETtyL6gg0tbBo8JT+rUEH2GiK4KNByKfjLm7gsWGV8JpHLqgaBp2uDT/w
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eSuC8fEo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/5] net/sched: taprio:
 replace tc_taprio_qopt_offload :: enable with a "cmd" enum
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Kurt Kanzenbach <kurt@linutronix.de>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Gerhard Engleder <gerhard@engleder-embedded.com>,
 "UNGLinuxDriver@microchip.com" <UNGLinuxDriver@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Florian
 Fainelli <f.fainelli@gmail.com>, Xiaoliang Yang <xiaoliang.yang_1@nxp.com>,
 "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Ismail,
 Mohammad Athari" <mohammad.athari.ismail@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Pranavi Somisetty <pranavi.somisetty@amd.com>, Jiri Pirko <jiri@resnulli.us>,
 "Hadi Salim, Jamal" <jhs@mojatatu.com>, Roger Quadros <rogerq@kernel.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, "Sit,
 Michael Wei Hong" <michael.wei.hong.sit@intel.com>,
 Harini Katakam <harini.katakam@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jose Abreu <joabreu@synopsys.com>, Oleksij Rempel <linux@rempel-privat.de>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> Inspired from struct flow_cls_offload :: cmd, in order for taprio to be able to
> report statistics (which is future work), it seems that we need to drill one step
> further with the ndo_setup_tc(TC_SETUP_QDISC_TAPRIO)
> multiplexing, and pass the command as part of the common portion of the
> muxed structure.
> 
> Since we already have an "enable" variable in tc_taprio_qopt_offload, refactor
> all drivers to check for "cmd" instead of "enable", and reject every other
> command except "replace" and "destroy" - to be future proof.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>

Reviewed-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

> ---
>  drivers/net/dsa/hirschmann/hellcreek.c             | 14 +++++++++-----
>  drivers/net/dsa/ocelot/felix_vsc9959.c             |  4 +++-
>  drivers/net/dsa/sja1105/sja1105_tas.c              |  7 +++++--
>  drivers/net/ethernet/engleder/tsnep_selftests.c    | 12 ++++++------
>  drivers/net/ethernet/engleder/tsnep_tc.c           |  4 +++-
>  drivers/net/ethernet/freescale/enetc/enetc_qos.c   |  6 +++++-
>  drivers/net/ethernet/intel/igc/igc_main.c          | 13 +++++++++++--
>  .../net/ethernet/microchip/lan966x/lan966x_tc.c    | 10 ++++++++--
>  drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c    |  7 +++++--
>  drivers/net/ethernet/ti/am65-cpsw-qos.c            | 11 ++++++++---
>  include/net/pkt_sched.h                            |  7 ++++++-
>  net/sched/sch_taprio.c                             |  4 ++--
>  12 files changed, 71 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/net/dsa/hirschmann/hellcreek.c
> b/drivers/net/dsa/hirschmann/hellcreek.c
> index 595a548bb0a8..af50001ccdd4 100644
> --- a/drivers/net/dsa/hirschmann/hellcreek.c
> +++ b/drivers/net/dsa/hirschmann/hellcreek.c
> @@ -1885,13 +1885,17 @@ static int hellcreek_port_setup_tc(struct
> dsa_switch *ds, int port,
>  	case TC_SETUP_QDISC_TAPRIO: {
>  		struct tc_taprio_qopt_offload *taprio = type_data;
> 
> -		if (!hellcreek_validate_schedule(hellcreek, taprio))
> -			return -EOPNOTSUPP;
> +		switch (taprio->cmd) {
> +		case TAPRIO_CMD_REPLACE:
> +			if (!hellcreek_validate_schedule(hellcreek, taprio))
> +				return -EOPNOTSUPP;
> 
> -		if (taprio->enable)
>  			return hellcreek_port_set_schedule(ds, port, taprio);
> -
> -		return hellcreek_port_del_schedule(ds, port);
> +		case TAPRIO_CMD_DESTROY:
> +			return hellcreek_port_del_schedule(ds, port);
> +		default:
> +			return -EOPNOTSUPP;
> +		}
>  	}
>  	default:
>  		return -EOPNOTSUPP;
> diff --git a/drivers/net/dsa/ocelot/felix_vsc9959.c
> b/drivers/net/dsa/ocelot/felix_vsc9959.c
> index 030738fef60e..5de6a27052fc 100644
> --- a/drivers/net/dsa/ocelot/felix_vsc9959.c
> +++ b/drivers/net/dsa/ocelot/felix_vsc9959.c
> @@ -1411,7 +1411,7 @@ static int vsc9959_qos_port_tas_set(struct ocelot
> *ocelot, int port,
> 
>  	mutex_lock(&ocelot->tas_lock);
> 
> -	if (!taprio->enable) {
> +	if (taprio->cmd == TAPRIO_CMD_DESTROY) {
>  		ocelot_port_mqprio(ocelot, port, &taprio->mqprio);
>  		ocelot_rmw_rix(ocelot, 0, QSYS_TAG_CONFIG_ENABLE,
>  			       QSYS_TAG_CONFIG, port);
> @@ -1423,6 +1423,8 @@ static int vsc9959_qos_port_tas_set(struct ocelot
> *ocelot, int port,
> 
>  		mutex_unlock(&ocelot->tas_lock);
>  		return 0;
> +	} else if (taprio->cmd != TAPRIO_CMD_REPLACE) {
> +		return -EOPNOTSUPP;
>  	}
> 
>  	ret = ocelot_port_mqprio(ocelot, port, &taprio->mqprio); diff --git
> a/drivers/net/dsa/sja1105/sja1105_tas.c
> b/drivers/net/dsa/sja1105/sja1105_tas.c
> index e6153848a950..d7818710bc02 100644
> --- a/drivers/net/dsa/sja1105/sja1105_tas.c
> +++ b/drivers/net/dsa/sja1105/sja1105_tas.c
> @@ -516,10 +516,11 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds,
> int port,
>  	/* Can't change an already configured port (must delete qdisc first).
>  	 * Can't delete the qdisc from an unconfigured port.
>  	 */
> -	if (!!tas_data->offload[port] == admin->enable)
> +	if ((!!tas_data->offload[port] && admin->cmd ==
> TAPRIO_CMD_REPLACE) ||
> +	    (!tas_data->offload[port] && admin->cmd ==
> TAPRIO_CMD_DESTROY))
>  		return -EINVAL;
> 
> -	if (!admin->enable) {
> +	if (admin->cmd == TAPRIO_CMD_DESTROY) {
>  		taprio_offload_free(tas_data->offload[port]);
>  		tas_data->offload[port] = NULL;
> 
> @@ -528,6 +529,8 @@ int sja1105_setup_tc_taprio(struct dsa_switch *ds, int
> port,
>  			return rc;
> 
>  		return sja1105_static_config_reload(priv,
> SJA1105_SCHEDULING);
> +	} else if (admin->cmd != TAPRIO_CMD_REPLACE) {
> +		return -EOPNOTSUPP;
>  	}
> 
>  	/* The cycle time extension is the amount of time the last cycle from diff
> --git a/drivers/net/ethernet/engleder/tsnep_selftests.c
> b/drivers/net/ethernet/engleder/tsnep_selftests.c
> index 1581d6b22232..8a9145f93147 100644
> --- a/drivers/net/ethernet/engleder/tsnep_selftests.c
> +++ b/drivers/net/ethernet/engleder/tsnep_selftests.c
> @@ -329,7 +329,7 @@ static bool disable_taprio(struct tsnep_adapter
> *adapter)
>  	int retval;
> 
>  	memset(&qopt, 0, sizeof(qopt));
> -	qopt.enable = 0;
> +	qopt.cmd = TAPRIO_CMD_DESTROY;
>  	retval = tsnep_tc_setup(adapter->netdev, TC_SETUP_QDISC_TAPRIO,
> &qopt);
>  	if (retval)
>  		return false;
> @@ -360,7 +360,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter
> *adapter)
>  	for (i = 0; i < 255; i++)
>  		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -	qopt->enable = 1;
> +	qopt->cmd = TAPRIO_CMD_REPLACE;
>  	qopt->base_time = ktime_set(0, 0);
>  	qopt->cycle_time = 1500000;
>  	qopt->cycle_time_extension = 0;
> @@ -382,7 +382,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter
> *adapter)
>  	if (!run_taprio(adapter, qopt, 100))
>  		goto failed;
> 
> -	qopt->enable = 1;
> +	qopt->cmd = TAPRIO_CMD_REPLACE;
>  	qopt->base_time = ktime_set(0, 0);
>  	qopt->cycle_time = 411854;
>  	qopt->cycle_time_extension = 0;
> @@ -406,7 +406,7 @@ static bool tsnep_test_taprio(struct tsnep_adapter
> *adapter)
>  	if (!run_taprio(adapter, qopt, 100))
>  		goto failed;
> 
> -	qopt->enable = 1;
> +	qopt->cmd = TAPRIO_CMD_REPLACE;
>  	qopt->base_time = ktime_set(0, 0);
>  	delay_base_time(adapter, qopt, 12);
>  	qopt->cycle_time = 125000;
> @@ -457,7 +457,7 @@ static bool tsnep_test_taprio_change(struct
> tsnep_adapter *adapter)
>  	for (i = 0; i < 255; i++)
>  		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -	qopt->enable = 1;
> +	qopt->cmd = TAPRIO_CMD_REPLACE;
>  	qopt->base_time = ktime_set(0, 0);
>  	qopt->cycle_time = 100000;
>  	qopt->cycle_time_extension = 0;
> @@ -610,7 +610,7 @@ static bool tsnep_test_taprio_extension(struct
> tsnep_adapter *adapter)
>  	for (i = 0; i < 255; i++)
>  		qopt->entries[i].command = TC_TAPRIO_CMD_SET_GATES;
> 
> -	qopt->enable = 1;
> +	qopt->cmd = TAPRIO_CMD_REPLACE;
>  	qopt->base_time = ktime_set(0, 0);
>  	qopt->cycle_time = 100000;
>  	qopt->cycle_time_extension = 50000;
> diff --git a/drivers/net/ethernet/engleder/tsnep_tc.c
> b/drivers/net/ethernet/engleder/tsnep_tc.c
> index d083e6684f12..745b191a5540 100644
> --- a/drivers/net/ethernet/engleder/tsnep_tc.c
> +++ b/drivers/net/ethernet/engleder/tsnep_tc.c
> @@ -325,7 +325,7 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
>  	if (!adapter->gate_control)
>  		return -EOPNOTSUPP;
> 
> -	if (!qopt->enable) {
> +	if (qopt->cmd == TAPRIO_CMD_DESTROY) {
>  		/* disable gate control if active */
>  		mutex_lock(&adapter->gate_control_lock);
> 
> @@ -337,6 +337,8 @@ static int tsnep_taprio(struct tsnep_adapter *adapter,
>  		mutex_unlock(&adapter->gate_control_lock);
> 
>  		return 0;
> +	} else if (qopt->cmd != TAPRIO_CMD_REPLACE) {
> +		return -EOPNOTSUPP;
>  	}
> 
>  	retval = tsnep_validate_gcl(qopt);
> diff --git a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> index 83c27bbbc6ed..7aad824f4da7 100644
> --- a/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> +++ b/drivers/net/ethernet/freescale/enetc/enetc_qos.c
> @@ -65,7 +65,7 @@ static int enetc_setup_taprio(struct net_device *ndev,
>  	gcl_len = admin_conf->num_entries;
> 
>  	tge = enetc_rd(hw, ENETC_PTGCR);
> -	if (!admin_conf->enable) {
> +	if (admin_conf->cmd == TAPRIO_CMD_DESTROY) {
>  		enetc_wr(hw, ENETC_PTGCR, tge & ~ENETC_PTGCR_TGE);
>  		enetc_reset_ptcmsdur(hw);
> 
> @@ -138,6 +138,10 @@ int enetc_setup_tc_taprio(struct net_device *ndev,
> void *type_data)
>  	struct enetc_ndev_priv *priv = netdev_priv(ndev);
>  	int err, i;
> 
> +	if (taprio->cmd != TAPRIO_CMD_REPLACE &&
> +	    taprio->cmd != TAPRIO_CMD_DESTROY)
> +		return -EOPNOTSUPP;
> +
>  	/* TSD and Qbv are mutually exclusive in hardware */
>  	for (i = 0; i < priv->num_tx_rings; i++)
>  		if (priv->tx_ring[i]->tsd_enable)
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index c5ef1edcf548..88145c30c919 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6113,9 +6113,18 @@ static int igc_save_qbv_schedule(struct
> igc_adapter *adapter,
>  	size_t n;
>  	int i;
> 
> -	adapter->qbv_enable = qopt->enable;
> +	switch (qopt->cmd) {
> +	case TAPRIO_CMD_REPLACE:
> +		adapter->qbv_enable = true;
> +		break;
> +	case TAPRIO_CMD_DESTROY:
> +		adapter->qbv_enable = false;
> +		break;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> 
> -	if (!qopt->enable)
> +	if (!adapter->qbv_enable)
>  		return igc_tsn_clear_schedule(adapter);
> 
>  	if (qopt->base_time < 0)
> diff --git a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> index cf0cc7562d04..ee652f2d2359 100644
> --- a/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> +++ b/drivers/net/ethernet/microchip/lan966x/lan966x_tc.c
> @@ -21,8 +21,14 @@ static int lan966x_tc_setup_qdisc_mqprio(struct
> lan966x_port *port,  static int lan966x_tc_setup_qdisc_taprio(struct
> lan966x_port *port,
>  					 struct tc_taprio_qopt_offload
> *taprio)  {
> -	return taprio->enable ? lan966x_taprio_add(port, taprio) :
> -				lan966x_taprio_del(port);
> +	switch (taprio->cmd) {
> +	case TAPRIO_CMD_REPLACE:
> +		return lan966x_taprio_add(port, taprio);
> +	case TAPRIO_CMD_DESTROY:
> +		return lan966x_taprio_del(port);
> +	default:
> +		return -EOPNOTSUPP;
> +	}
>  }
> 
>  static int lan966x_tc_setup_qdisc_tbf(struct lan966x_port *port, diff --git
> a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> index 9d55226479b4..ac41ef4cbd2f 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_tc.c
> @@ -966,8 +966,11 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
>  		return -EOPNOTSUPP;
>  	}
> 
> -	if (!qopt->enable)
> +	if (qopt->cmd == TAPRIO_CMD_DESTROY)
>  		goto disable;
> +	else if (qopt->cmd != TAPRIO_CMD_REPLACE)
> +		return -EOPNOTSUPP;
> +
>  	if (qopt->num_entries >= dep)
>  		return -EINVAL;
>  	if (!qopt->cycle_time)
> @@ -988,7 +991,7 @@ static int tc_setup_taprio(struct stmmac_priv *priv,
> 
>  	mutex_lock(&priv->plat->est->lock);
>  	priv->plat->est->gcl_size = size;
> -	priv->plat->est->enable = qopt->enable;
> +	priv->plat->est->enable = qopt->cmd == TAPRIO_CMD_REPLACE;
>  	mutex_unlock(&priv->plat->est->lock);
> 
>  	for (i = 0; i < size; i++) {
> diff --git a/drivers/net/ethernet/ti/am65-cpsw-qos.c
> b/drivers/net/ethernet/ti/am65-cpsw-qos.c
> index 3a908db6e5b2..eced87fa261c 100644
> --- a/drivers/net/ethernet/ti/am65-cpsw-qos.c
> +++ b/drivers/net/ethernet/ti/am65-cpsw-qos.c
> @@ -450,7 +450,7 @@ static int am65_cpsw_configure_taprio(struct
> net_device *ndev,
> 
>  	am65_cpsw_est_update_state(ndev);
> 
> -	if (!est_new->taprio.enable) {
> +	if (est_new->taprio.cmd == TAPRIO_CMD_DESTROY) {
>  		am65_cpsw_stop_est(ndev);
>  		return ret;
>  	}
> @@ -476,7 +476,7 @@ static int am65_cpsw_configure_taprio(struct
> net_device *ndev,
>  	am65_cpsw_est_set_sched_list(ndev, est_new);
>  	am65_cpsw_port_est_assign_buf_num(ndev, est_new->buf);
> 
> -	am65_cpsw_est_set(ndev, est_new->taprio.enable);
> +	am65_cpsw_est_set(ndev, est_new->taprio.cmd ==
> TAPRIO_CMD_REPLACE);
> 
>  	if (tact == TACT_PROG) {
>  		ret = am65_cpsw_timer_set(ndev, est_new); @@ -520,7
> +520,7 @@ static int am65_cpsw_set_taprio(struct net_device *ndev, void
> *type_data)
>  	am65_cpsw_cp_taprio(taprio, &est_new->taprio);
>  	ret = am65_cpsw_configure_taprio(ndev, est_new);
>  	if (!ret) {
> -		if (taprio->enable) {
> +		if (taprio->cmd == TAPRIO_CMD_REPLACE) {
>  			devm_kfree(&ndev->dev, port->qos.est_admin);
> 
>  			port->qos.est_admin = est_new;
> @@ -564,8 +564,13 @@ static void am65_cpsw_est_link_up(struct net_device
> *ndev, int link_speed)  static int am65_cpsw_setup_taprio(struct net_device
> *ndev, void *type_data)  {
>  	struct am65_cpsw_port *port = am65_ndev_to_port(ndev);
> +	struct tc_taprio_qopt_offload *taprio = type_data;
>  	struct am65_cpsw_common *common = port->common;
> 
> +	if (taprio->cmd != TAPRIO_CMD_REPLACE &&
> +	    taprio->cmd != TAPRIO_CMD_DESTROY)
> +		return -EOPNOTSUPP;
> +
>  	if (!IS_ENABLED(CONFIG_TI_AM65_CPSW_TAS))
>  		return -ENODEV;
> 
> diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h index
> f436688b6efc..f5fb11da357b 100644
> --- a/include/net/pkt_sched.h
> +++ b/include/net/pkt_sched.h
> @@ -185,6 +185,11 @@ struct tc_taprio_caps {
>  	bool broken_mqprio:1;
>  };
> 
> +enum tc_taprio_qopt_cmd {
> +	TAPRIO_CMD_REPLACE,
> +	TAPRIO_CMD_DESTROY,
> +};
> +
>  struct tc_taprio_sched_entry {
>  	u8 command; /* TC_TAPRIO_CMD_* */
> 
> @@ -196,7 +201,7 @@ struct tc_taprio_sched_entry {  struct
> tc_taprio_qopt_offload {
>  	struct tc_mqprio_qopt_offload mqprio;
>  	struct netlink_ext_ack *extack;
> -	u8 enable;
> +	enum tc_taprio_qopt_cmd cmd;
>  	ktime_t base_time;
>  	u64 cycle_time;
>  	u64 cycle_time_extension;
> diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c index
> d29e6785854d..06bf4c6355a5 100644
> --- a/net/sched/sch_taprio.c
> +++ b/net/sched/sch_taprio.c
> @@ -1524,7 +1524,7 @@ static int taprio_enable_offload(struct net_device
> *dev,
>  			       "Not enough memory for enabling offload mode");
>  		return -ENOMEM;
>  	}
> -	offload->enable = 1;
> +	offload->cmd = TAPRIO_CMD_REPLACE;
>  	offload->extack = extack;
>  	mqprio_qopt_reconstruct(dev, &offload->mqprio.qopt);
>  	offload->mqprio.extack = extack;
> @@ -1572,7 +1572,7 @@ static int taprio_disable_offload(struct net_device
> *dev,
>  			       "Not enough memory to disable offload mode");
>  		return -ENOMEM;
>  	}
> -	offload->enable = 0;
> +	offload->cmd = TAPRIO_CMD_DESTROY;
> 
>  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
>  	if (err < 0) {
> --
> 2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
