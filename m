Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06368679C5B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Jan 2023 15:47:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CC58610C1;
	Tue, 24 Jan 2023 14:47:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CC58610C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674571634;
	bh=PAggPpbpCke7ciuJKEcLsZwovbj3o4vXEajqx0Yq1G4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8QTRvnq9yHI6WWXFFfG18RebNwDRZoI/CGPG4uaEGzhZVL7+pBdUCFyQ7WxkVuv5y
	 L6WjOFfE9yNbydLoDvSwnccSeDCjwtQNjYmRJKS+X7G7tQSJYS4zGFdPRb8HWY6sqf
	 rRgv9B0ftcjL8a/VY0x5Y+HgLHpsn6LofnpujdDRPhMrRfmbP9Vzi/PQ9TIOZakEvc
	 8lhATBjA2MIPAuNRayFPVYBI93mUZxlIikLWtFzKr/t/BARrZOnizR/mHw1WXNyLOV
	 fV5HqZodqfndZ+6Gzy5gL23EXQzCJ3CMF03YDM4ZKekYyCXFZ7d+pPNnqPREmPmLm/
	 KRa2G6cJaR8Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dGNZhdoeTg_E; Tue, 24 Jan 2023 14:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA4BA60EDB;
	Tue, 24 Jan 2023 14:47:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AA4BA60EDB
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 556F71BF255
 for <intel-wired-lan@osuosl.org>; Tue, 24 Jan 2023 14:47:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 29E1141910
 for <intel-wired-lan@osuosl.org>; Tue, 24 Jan 2023 14:47:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29E1141910
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AL0d4pYHRBTz for <intel-wired-lan@osuosl.org>;
 Tue, 24 Jan 2023 14:47:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A97344186B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A97344186B
 for <intel-wired-lan@osuosl.org>; Tue, 24 Jan 2023 14:47:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="353585018"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="353585018"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2023 06:47:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="730706946"
X-IronPort-AV: E=Sophos;i="5.97,242,1669104000"; d="scan'208";a="730706946"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2023 06:47:04 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 24 Jan 2023 06:47:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 24 Jan 2023 06:47:03 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 24 Jan 2023 06:47:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mlZ4vjhGgX0bInQhvu4+1OXSWUe/5rc7sNwbj72wlZ7vDDn0E7vESwAJBk8/N5SaKhCBSLsaX2gLbiEwebjL4ZZcQVKsxCDB3qwlftN1qvYdecDOlvEdb70Bb/FNhhFyyYmXVu0dmBtnzZgSeflAekdj7AfcAI2Bb4+kUdW1xpEh6PfD9OhUx5Xs6lkBO3FDSkMmTpQ0zr56XFDL43dtjNBiZfl5IV/xkEeufg+8s1vEDMmHVH3oWSdHK4+OEod7TFOgRjaDGPcV/kf/uzNeXCnMwo9Pm8D9PVYjbBspvUhJ0fRO6bLU2GFN8edSXMOUm9EIFX9he3VGXzOnYlmlQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3b20XXaMhvDMDTxnLy3ifypgUxKwHIevKIF60UHuQxA=;
 b=DC/O2S6YBz6lumoaNY9Y+WVCfTi+1vNRwejXI7ErhDYsUAeyin4NpXjchtwT1INBBfPiMJnGMrs0vbqAWCsgj7Pl+k+oYwzxGnXHLLXWDyXOQGvEsAWi9t4DOEdITqc8pTw4T8X4U8yj+DjpJSNnSDAXREi9/Fk33JsHzrOjAaQJBkIytqlIT7EZ+6owVAIgoXTyU0BFFx9C3eQHyl0BjPapyUQYdPIbFy2TMFi1Zr1C8BP4Qod7Dfg2UUfioa23dB7VZQXoXH5ybjad38yKsMcfkSGkQyUqlGDnFLeo+ONpukSfzgKA7CdExdG99Wr4jN2YmqSQsscrC7tLwlb/6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CY5PR11MB6485.namprd11.prod.outlook.com (2603:10b6:930:33::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 14:46:59 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331%6]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 14:46:59 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: Intel-wired-lan Digest, Vol 405, Issue 6
Thread-Index: AQHZJLdCckEfJDyVpU+FzGpo7wdCOq6tubjw
Date: Tue, 24 Jan 2023 14:46:59 +0000
Message-ID: <SJ1PR11MB618069735F4BD2781909EF6DB8C99@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <mailman.5156.1673329730.179342.intel-wired-lan@osuosl.org>
In-Reply-To: <mailman.5156.1673329730.179342.intel-wired-lan@osuosl.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CY5PR11MB6485:EE_
x-ms-office365-filtering-correlation-id: 93093fd3-c34c-449b-dada-08dafe19d8ff
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ftuj32bTh/uSgbHIDzAIvqZ1v7eHudiZ886ysi3Bydma4f2BpwvCil2XLm24qyEfZlVM4sKC8jNw+uyVlPLBiT4czuLXM6Yfp2lBojIslzkptIIswyK/Kxe7kflV3h9FCaf7NmjqeYe95AXYiBZo6fXPkS0RSHjSMlg36RwCF6Ehfw8sBXg6tprTa1BsuAe3kAf0PWM0Gh6ngUBSmj4nR4SjRgeWRR2I/qGilT9+kbxqWxV6rJeGSYo0zbCA0AmjhSc0VYdcpO4XLMijI3YzL2bp+u6HxIYq4YdP0aj5sMuvRmkLhqprZGq3RiH35XgP9gOw7v5b26r3/rlben3mZEG0cHvjdAnF+qRWftiyvC91VwqnmS4bPQFhpUHG7mGIFxo1GUakZqdEIi7kkOwsNxEXeuAMq/jrCX8tqJPTZnfx12OMWjDgLv2IJ9dUjh8YM5ye4cZmgUU+Lwhgx/pCsGXlX6ZIxWa0QNjfm4vbRfpP7F5lNhv3UIuR5XVCHp01jprsWO8jEEm6ObjiSra3D3rcTJ4JntR40xtD/9VZ4NZHxTY8ngzVjD+AL/Slz1BHG2a+c8t7xKJf3lg8TytHtQQVhgQhde4QUJf8OTeKOlcNpTGdjHJ8GejPLwRlirKpzyJR6g4aAFZq3Ov5liXmjITsVUNCTC1sEN9o6BKTPcd33wDXFh/wmaiWIBA8aT+oVcJ6ugmRcp2YJ4K2bcnIvNMT/qG7KCP5eVXWjL+E0E2mn9Vl6YNB2wJM3/2bx+4Ta536G34WVVk7RVUVlsLlsA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(136003)(39860400002)(366004)(451199015)(71200400001)(7696005)(2906002)(6916009)(66446008)(66476007)(64756008)(66556008)(966005)(8676002)(76116006)(5660300002)(9686003)(52536014)(8936002)(66899015)(26005)(30864003)(41300700001)(186003)(6506007)(66946007)(83380400001)(53546011)(82960400001)(33656002)(122000001)(38100700002)(316002)(38070700005)(478600001)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lTzDzMFS2B5zS1wQmFh5wpJZOfJcy+G8/mr2Qg384Pm1hJi2u6bk7gFo/VJx?=
 =?us-ascii?Q?CCdOW3oCaUqSegEoxyVaw1btvGSzYb3HQwYC5hPVrS3MHGSBgSeErAHYlKEN?=
 =?us-ascii?Q?KkFSct4A/OnZg9ajqjr7fXkmbyM2ZdysPxZ93cxp6jEDsLnMTegCA9yvqx8p?=
 =?us-ascii?Q?EInAqqdb/PoDSpK4kIgU4QcST/638zhhtt6nS86sJNHxK9tqvIHPv7XHxm//?=
 =?us-ascii?Q?+eLAGHmCFh1Pi+gb7q6936MngiZTaLZRiUgi9dllAcqbEq6rpjo6c+UD8Jkg?=
 =?us-ascii?Q?iQOx1Zms7Bdgx3KxHZOGcegwbFAL80rYOK/u5/oBoUxRHyC+CdomseJxQbRq?=
 =?us-ascii?Q?BtXn7uMIM3FkhsWRfoFX3RdCT3Wtny3A10tvXVuuaKYSSv6EMTNsWOztr0Fs?=
 =?us-ascii?Q?+dzKZ33OqATeZjx0Ptz5lIe1CKEZQ7OqhJnYwyya+yF+zbSUf5Vds8ikYgo/?=
 =?us-ascii?Q?rM08Kzxss6PM8smgpnqhjFDE537C+VRhiAooFAsJI880V/nc7g146QYjFEbw?=
 =?us-ascii?Q?a49pazUZ76aK00IQBc2QU++f18XR2C+AUH7nYVdIj3pXj3Zs1+PiEeJ55ihX?=
 =?us-ascii?Q?zSlrA5nskgW7jKHrTXsfeS40F9ZaEvgrpJZRIkAI/oHtEWfQMX7lsCITV5YW?=
 =?us-ascii?Q?PERk70Qeu+oCVh6ajmtHwT8Tr0v1k9+kralU85ERIQCUgMicE+/V4c0Qoumj?=
 =?us-ascii?Q?vd4A91Amjopy1SLo4Sp5R3Pa+tEqaVA4LPnLy6CaornYmk02Szn9C8HMQU7H?=
 =?us-ascii?Q?Qh+rgjE/i7r6iBf58//llHqTl1YIl9yeHz19Zy5W3uFNJsDKkm1O19ZfkVz6?=
 =?us-ascii?Q?FU++RJ26ZDDNgyJVZ1/dZqCNj+ktmptoR6xc7T9m+kpzrnMoN5M2SeWDvwWM?=
 =?us-ascii?Q?BMjz+4AraczyCh6815eVQ6OoM/Jb4LhXTbEKsXTkGAPu/HEnx7QDqx+FPDgq?=
 =?us-ascii?Q?bAO21+aP2m8ZN6P37nT9odnfHfJ4WrxEApDI5MMbRzELR2DYtnMHxXtgbv9K?=
 =?us-ascii?Q?ta32H1CAqxYISV7R08eGS0XEyBDM3UVxFOV+5EWrXVXffCvZaKJwx3e9CUpC?=
 =?us-ascii?Q?Fez63C13GtlmlFsXvXtokM4TD0jNRC6r189bvYND2MJiAJ2v0453kdo10EfN?=
 =?us-ascii?Q?HRUYpE2D0OrLIIFtevj0ViASFnAasPLCw78gTq4cGKqNJ1xnCh+VlNTZcyMz?=
 =?us-ascii?Q?1+qmyci0R5QwC/vE0DGLdPhvz/depcZFWk12FXP7OGjgwys2svBVZtFmc1XG?=
 =?us-ascii?Q?mZoWaOHuU0rfmiu79cpl5XvfeyyIQA/M+VPThnaBmoOw7WtyG0mMymmdWyBy?=
 =?us-ascii?Q?YjgJuYYat2vp9evTNHlliPdTk5GuRcQU1JJhvEo1HCAl/MqzeBYAGj5OFZJG?=
 =?us-ascii?Q?Ijs3LlJefnIquN65J7NCI5xangB3lOHX9+cNdjrYP7ieaU1YKxDttR7pxxQr?=
 =?us-ascii?Q?lsEr70ezv0gu0LPDbZEZ7MVCCh/1VkcpTmDy8iTf8Nur1oU3epO/uppSPGzC?=
 =?us-ascii?Q?L9miRf2VnrVR2LdhHhXXVJZxM05/FQA44QszP+SpcuJUgD2OxpCFnv/X3X7i?=
 =?us-ascii?Q?aVtCI0AFHKhCnt1wtZs/tJyyCjTNof7rcD0IiKtH/Cg+wo9KmOhYvToCOz3m?=
 =?us-ascii?Q?klr2gIC3j7g+kewv3tdvX9o=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93093fd3-c34c-449b-dada-08dafe19d8ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2023 14:46:59.4005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CvevWJDoZC9RoXjOKVuEEkdxA7JegN3zYBrRS5AnfuCzbmzb3TxS255yfci02o9aKoAFu50eQNrjd95dM9q6Gro/PEyT0DoXfiIpkTBS+JQyMkJ32B/RznmNxXAZishW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6485
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674571624; x=1706107624;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HG2TWmvkCEmsfI0jQxgfgL/3aiYoB0vyMsiFZYKv0CI=;
 b=KuVCum3n/7mjCf+/Gohpn1NpUa+s39Id8bx9UKXgzigwqFz9t3OBTuUQ
 lJzLGWdzRzlvlcqhfbmxdMrwuNH5c8PMc0j4HsKfrMxdiID11Ql4pf83g
 HCC3ycWHeeU5z0BvywyAz3TRrlBeJY7siUK5uySsxxrcj1+z4Synj6i0s
 SLJJzXK/lHSVfjVEAYWlXlTQfwRh5fHGAwN9HDML2VJBaUsrn1nzmFszw
 NhbghSAxqStHdtvEwa+i/cBtUd2xNWYd0nb+fXdzOuUYKX42y5nG0g/Ci
 H/pryIzs7w3bmj5996I4QslLvdxEJZqtV6HjrKXkX/auZ8jUQxktnPKIX
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KuVCum3n
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Intel-wired-lan Digest, Vol 405, Issue 6
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

Hi Sasha,

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> intel-wired-lan-request@osuosl.org
> Sent: Tuesday, 10 January, 2023 1:49 PM
> To: intel-wired-lan@osuosl.org
> Subject: Intel-wired-lan Digest, Vol 405, Issue 6
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
> When replying, please edit your Subject line so it is more specific than "Re:
> Contents of Intel-wired-lan digest..."
> 
> 
> Today's Topics:
> 
>    1. [PATCH 1/1] ice: WiP support for BIG TCP packets
>       (Pawel Chmielewski)
>    2. Re: [PATCH 1/1] ice: WiP support for BIG TCP packets
>       (Alexander H Duyck)
>    3. [tnguy-net-queue:dev-queue] BUILD SUCCESS
>       4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35 (kernel test robot)
>    4. [PATCH net v1 1/1] igc: Add ndo_tx_timeout support (Sasha Neftin)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Mon,  9 Jan 2023 17:18:33 +0100
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> To: netdev@vger.kernel.org
> Cc: intel-wired-lan@osuosl.org, Pawel Chmielewski
> 	<pawel.chmielewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG TCP
> 	packets
> Message-ID: <20230109161833.223510-1-pawel.chmielewski@intel.com>
> 
> This patch is a proof of concept for testing BIG TCP feature in ice driver.
> Please see letter below.
> 
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> ---
> Hi All
> I'm writing on the list, as you may be able to provide me some feedback.
> I want to enable BIG TCP feature in intel ice drive, but I think I'm missing
> something.
> In the code itself, I've set 128k as a maximum tso size for the netif, and
> added stripping the HBH option from the header.
> For testing purposes, gso_max_size & gro_max_size were set to 128k and
> mtu to 9000.
> I've assumed that the ice tso offload will do the rest of the job.
> However- while running netperf TCP_RR and TCP_STREAM tests, I saw that
> only up to ~20% of the transmitted test packets have the specified size.
> Other packets to be transmitted, appear from the stack as splitted.
> 
> I've been running the following testcases:
> netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O
> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O
> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> I suspected a shrinking tcp window size, but sniffing with tcpdump showed
> rather big scaling factor (usually 128x).
> Apart from using netperf, I also tried a simple IPv6 user space application
> (with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) -
> similar results.
> 
> I'd be very grateful for any feedback/suggestions
> 
> Pawel
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
> drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
>  2 files changed, 13 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index 2b23b4714a26..4e657820e55d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
> DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
>  EXPORT_SYMBOL(ice_xdp_locking_key);
> 
> +#define ICE_MAX_TSO_SIZE 131072
> +
>  /**
>   * ice_hw_to_dev - Get device pointer from the hardware structure
>   * @hw: pointer to the device HW structure @@ -3422,6 +3424,8 @@ static
> void ice_set_netdev_features(struct net_device *netdev)
>  	 * be changed at runtime
>  	 */
>  	netdev->hw_features |= NETIF_F_RXFCS;
> +
> +	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
>  }
> 
>  /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index 086f0b3ab68d..7e0ac483cad9 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -23,6 +23,9 @@
>  #define FDIR_DESC_RXDID 0x40
>  #define ICE_FDIR_CLEAN_DELAY 10
> 
> +#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr) #define
> HBH_OFFSET
> +ETH_HLEN + sizeof(struct ipv6hdr)
> +
>  /**
>   * ice_prgm_fdir_fltr - Program a Flow Director filter
>   * @vsi: VSI to send dummy packet
> @@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct
> ice_tx_ring *tx_ring)
> 
>  	ice_trace(xmit_frame_ring, tx_ring, skb);
> 
> +	if (ipv6_has_hopopt_jumbo(skb)) {
> +		memmove(skb->data + HBH_HDR_SIZE, skb->data,
> HBH_OFFSET);
> +		__skb_pull(skb, HBH_HDR_SIZE);
> +		skb_reset_mac_header(skb);
> +	}
> +
>  	count = ice_xmit_desc_count(skb);
>  	if (ice_chk_linearize(skb, count)) {
>  		if (__skb_linearize(skb))
> --
> 2.37.3
> 
> 
> 
> ------------------------------
> 
> Message: 2
> Date: Mon, 09 Jan 2023 10:22:22 -0800
> From: Alexander H Duyck <alexander.duyck@gmail.com>
> To: Pawel Chmielewski <pawel.chmielewski@intel.com>,
> 	netdev@vger.kernel.org
> Cc: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: WiP support for BIG
> 	TCP packets
> Message-ID:
> <9b68abc5e8613e02207e9c0c3619b1b07bc5bb8c.camel@gmail.com>
> Content-Type: text/plain; charset="UTF-8"
> 
> On Mon, 2023-01-09 at 17:18 +0100, Pawel Chmielewski wrote:
> > This patch is a proof of concept for testing BIG TCP feature in ice driver.
> > Please see letter below.
> >
> > Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> > ---
> > Hi All
> > I'm writing on the list, as you may be able to provide me some feedback.
> > I want to enable BIG TCP feature in intel ice drive, but I think I'm
> > missing something.
> > In the code itself, I've set 128k as a maximum tso size for the netif,
> > and added stripping the HBH option from the header.
> > For testing purposes, gso_max_size & gro_max_size were set to 128k and
> > mtu to 9000.
> > I've assumed that the ice tso offload will do the rest of the job.
> > However- while running netperf TCP_RR and TCP_STREAM tests,
> > I saw that only up to ~20% of the transmitted test packets have
> > the specified size.
> > Other packets to be transmitted, appear from the stack as splitted.
> >
> > I've been running the following testcases:
> > netperf -t TCP_RR -H 2001:db8:0:f101::1  -- -r80000,80000 -O
> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> > netperf -l-1 -t TCP_STREAM -H 2001:db8:0:f101::1  -- -m 128K -O
> MIN_LATENCY,P90_LATENCY,P99_LATENCY,THROUGHPUT
> > I suspected a shrinking tcp window size, but sniffing with tcpdump showed
> rather big scaling factor (usually 128x).
> > Apart from using netperf, I also tried a simple IPv6 user space application
> > (with SO_SNDBUF option set to 192k and TCP_WINDOW_CLAMP to 96k) -
> similar results.
> >
> > I'd be very grateful for any feedback/suggestions
> >
> > Pawel
> > ---
> >  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
> >  drivers/net/ethernet/intel/ice/ice_txrx.c | 9 +++++++++
> >  2 files changed, 13 insertions(+)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 2b23b4714a26..4e657820e55d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -48,6 +48,8 @@ static DEFINE_IDA(ice_aux_ida);
> >  DEFINE_STATIC_KEY_FALSE(ice_xdp_locking_key);
> >  EXPORT_SYMBOL(ice_xdp_locking_key);
> >
> > +#define ICE_MAX_TSO_SIZE 131072
> > +
> >  /**
> >   * ice_hw_to_dev - Get device pointer from the hardware structure
> >   * @hw: pointer to the device HW structure
> > @@ -3422,6 +3424,8 @@ static void ice_set_netdev_features(struct
> net_device *netdev)
> >  	 * be changed at runtime
> >  	 */
> >  	netdev->hw_features |= NETIF_F_RXFCS;
> > +
> > +	netif_set_tso_max_size(netdev, ICE_MAX_TSO_SIZE);
> >  }
> >
> >  /**
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c
> b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > index 086f0b3ab68d..7e0ac483cad9 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -23,6 +23,9 @@
> >  #define FDIR_DESC_RXDID 0x40
> >  #define ICE_FDIR_CLEAN_DELAY 10
> >
> > +#define HBH_HDR_SIZE sizeof(struct hop_jumbo_hdr)
> > +#define HBH_OFFSET ETH_HLEN + sizeof(struct ipv6hdr)
> > +
> >  /**
> >   * ice_prgm_fdir_fltr - Program a Flow Director filter
> >   * @vsi: VSI to send dummy packet
> > @@ -2300,6 +2303,12 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct
> ice_tx_ring *tx_ring)
> >
> >  	ice_trace(xmit_frame_ring, tx_ring, skb);
> >
> > +	if (ipv6_has_hopopt_jumbo(skb)) {
> > +		memmove(skb->data + HBH_HDR_SIZE, skb->data,
> HBH_OFFSET);
> > +		__skb_pull(skb, HBH_HDR_SIZE);
> > +		skb_reset_mac_header(skb);
> > +	}
> > +
> >  	count = ice_xmit_desc_count(skb);
> >  	if (ice_chk_linearize(skb, count)) {
> >  		if (__skb_linearize(skb))
> 
> Your removal code here is forgetting to handle the network header. As a
> result your frames will be pointer mangled in terms of header location.
> 
> You might be better off using ipv6_hopopt_jumbo_remove() rather than
> just coding your own bit to remove it.
> 
> 
> ------------------------------
> 
> Message: 3
> Date: Tue, 10 Jan 2023 13:10:09 +0800
> From: kernel test robot <lkp@intel.com>
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [tnguy-net-queue:dev-queue] BUILD SUCCESS
> 	4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35
> Message-ID: <63bcf331.kDz0I6QwE35Zcf1P%lkp@intel.com>
> Content-Type: text/plain; charset=us-ascii
> 
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/net-
> queue.git dev-queue
> branch HEAD: 4cb425d20a6ddbf9fd40989c31f5c6f8f304dc35  ice: fix out-of-
> bounds KASAN warning in virtchnl
> 
> elapsed time: 723m
> 
> configs tested: 84
> configs skipped: 2
> 
> The following configs have been built successfully.
> More configs may be tested in the coming days.
> 
> gcc tested configs:
> x86_64                            allnoconfig
> arc                                 defconfig
> alpha                               defconfig
> powerpc                           allnoconfig
> um                             i386_defconfig
> um                           x86_64_defconfig
> alpha                            allyesconfig
> s390                             allmodconfig
> m68k                             allmodconfig
> arc                              allyesconfig
> s390                                defconfig
> m68k                             allyesconfig
> x86_64                              defconfig
> s390                             allyesconfig
> i386                                defconfig
> arm                                 defconfig
> i386                             allyesconfig
> x86_64               randconfig-a011-20230109
> x86_64               randconfig-a013-20230109
> i386                 randconfig-a011-20230109
> x86_64               randconfig-a012-20230109
> sh                               allmodconfig
> i386                 randconfig-a013-20230109
> x86_64                           rhel-8.3-bpf
> x86_64                               rhel-8.3
> x86_64               randconfig-a014-20230109
> x86_64               randconfig-a016-20230109
> x86_64               randconfig-a015-20230109
> ia64                             allmodconfig
> x86_64                           allyesconfig
> i386                 randconfig-a012-20230109
> x86_64                    rhel-8.3-kselftests
> x86_64                           rhel-8.3-syz
> x86_64                         rhel-8.3-kunit
> x86_64                          rhel-8.3-func
> i386                 randconfig-a014-20230109
> x86_64                           rhel-8.3-kvm
> i386                 randconfig-a016-20230109
> i386                 randconfig-a015-20230109
> mips                             allyesconfig
> powerpc                          allmodconfig
> arm64                            allyesconfig
> arm                              allyesconfig
> riscv                randconfig-r042-20230109
> s390                 randconfig-r044-20230109
> arm                  randconfig-r046-20230108
> arc                  randconfig-r043-20230108
> arc                  randconfig-r043-20230109
> i386                          randconfig-c001
> arm                        trizeps4_defconfig
> arm                         s3c6400_defconfig
> sh                               alldefconfig
> ia64                                defconfig
> riscv                    nommu_virt_defconfig
> riscv                          rv32_defconfig
> riscv                    nommu_k210_defconfig
> riscv                             allnoconfig
> i386                   debian-10.3-kselftests
> i386                              debian-10.3
> m68k                           sun3_defconfig
> parisc                generic-32bit_defconfig
> sh                     sh7710voipgw_defconfig
> mips                            gpr_defconfig
> 
> clang tested configs:
> i386                 randconfig-a004-20230109
> x86_64               randconfig-a003-20230109
> x86_64               randconfig-a002-20230109
> x86_64                          rhel-8.3-rust
> x86_64               randconfig-a004-20230109
> hexagon              randconfig-r045-20230109
> i386                 randconfig-a002-20230109
> x86_64               randconfig-a005-20230109
> i386                 randconfig-a003-20230109
> x86_64               randconfig-a001-20230109
> arm                  randconfig-r046-20230109
> riscv                randconfig-r042-20230108
> x86_64               randconfig-a006-20230109
> hexagon              randconfig-r041-20230108
> i386                 randconfig-a006-20230109
> i386                 randconfig-a001-20230109
> hexagon              randconfig-r041-20230109
> i386                 randconfig-a005-20230109
> hexagon              randconfig-r045-20230108
> s390                 randconfig-r044-20230108
> x86_64                        randconfig-k001
> 
> --
> 0-DAY CI Kernel Test Service
> https://01.org/lkp
> 
> 
> ------------------------------
> 
> Message: 4
> Date: Tue, 10 Jan 2023 07:48:41 +0200
> From: Sasha Neftin <sasha.neftin@intel.com>
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1 1/1] igc: Add ndo_tx_timeout
> 	support
> Message-ID: <20230110054841.1857688-1-sasha.neftin@intel.com>
> 
> On some platforms, 100/1000/2500 speeds seem to have sometimes
> problems
> reporting false positive tx unit hang during stressful UDP traffic. Likely
> other Intel drivers introduce responses to a tx hang. Update the 'tx hang'
> comparator with the comparison of the head and tail of ring pointers and
> restore the tx_timeout_factor to the previous value (one).
> 
> This can be test by using netperf or iperf3 applications.
> Example:
> iperf3 -s -p 5001
> iperf3 -c 192.168.0.2 --udp -p 5001 --time 600 -b 0
> 
> netserver -p 16604
> netperf -H 192.168.0.2 -l 600 -p 16604 -t UDP_STREAM -- -m 64000
> 
> Fixes: b27b8dc77b5e ("igc: Increase timeout value for Speed 100/1000/2500")
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 25 +++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 13088b5bcf5b..b1031d5b32bc 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -2957,7 +2957,9 @@ static bool igc_clean_tx_irq(struct igc_q_vector
> *q_vector, int napi_budget)
>  		if (tx_buffer->next_to_watch &&
>  		    time_after(jiffies, tx_buffer->time_stamp +
>  		    (adapter->tx_timeout_factor * HZ)) &&
> -		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF)) {
> +		    !(rd32(IGC_STATUS) & IGC_STATUS_TXOFF) &&
> +		    (rd32(IGC_TDH(tx_ring->reg_idx)) !=
> +		    readl(tx_ring->tail))) {
>  			/* detected Tx unit hang */
>  			netdev_err(tx_ring->netdev,
>  				   "Detected Tx Unit Hang\n"
> @@ -5083,6 +5085,24 @@ static int igc_change_mtu(struct net_device
> *netdev, int new_mtu)
>  	return 0;
>  }
> 
> +/**
> + * igc_tx_timeout - Respond to a Tx Hang
> + * @netdev: network interface device structure
> + * @txqueue: queue number that timed out
> + **/
> +static void igc_tx_timeout(struct net_device *netdev,
> +			   unsigned int __always_unused txqueue)
> +{
> +	struct igc_adapter *adapter = netdev_priv(netdev);
> +	struct igc_hw *hw = &adapter->hw;
> +
> +	/* Do the reset outside of interrupt context */
> +	adapter->tx_timeout_count++;
> +	schedule_work(&adapter->reset_task);
> +	wr32(IGC_EICS,
> +	     (adapter->eims_enable_mask & ~adapter->eims_other));
> +}
> +
>  /**
>   * igc_get_stats64 - Get System Network Statistics
>   * @netdev: network interface device structure
> @@ -5510,7 +5530,7 @@ static void igc_watchdog_task(struct work_struct
> *work)
>  			case SPEED_100:
>  			case SPEED_1000:
>  			case SPEED_2500:
> -				adapter->tx_timeout_factor = 7;
> +				adapter->tx_timeout_factor = 1;

I was running more test with UDP packets with changing of Qbv Gates for TSN Mode.
The tx timeout factor appears to need to stay at 7 in order to avoid the hanging issue 
for some extremely high traffic situation gate switching. Given that it had no impact 
on the first head and tail pointer problem as per what you resolved in igc_clean_tx_irq(), 
I advise keeping this number.

>  				break;
>  			}
> 
> @@ -6352,6 +6372,7 @@ static const struct net_device_ops igc_netdev_ops
> = {
>  	.ndo_set_rx_mode	= igc_set_rx_mode,
>  	.ndo_set_mac_address	= igc_set_mac,
>  	.ndo_change_mtu		= igc_change_mtu,
> +	.ndo_tx_timeout		= igc_tx_timeout,
>  	.ndo_get_stats64	= igc_get_stats64,
>  	.ndo_fix_features	= igc_fix_features,
>  	.ndo_set_features	= igc_set_features,
> --
> 2.25.1
> 
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
> End of Intel-wired-lan Digest, Vol 405, Issue 6
> ***********************************************
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
