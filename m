Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6A765E53F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 06:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DB86820B2;
	Thu,  5 Jan 2023 05:51:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8DB86820B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672897890;
	bh=+Y55nE9EjGAkS1W7bCfifF1WIkzx+ItuEtTasO1w02U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iU3zoh4C+9KmQnCkNWC9xEM7F+AMfbedNPmkx/bzphxqw/1NjWZ9cOY5q9hCEHYKV
	 sGKom0e23qZ+l/fGuKFDW51m2I4reAHS5pDSh0lLyLBhWyvRO0eMK5/qaTwSMYodKO
	 ++upo4Qbo0RIzij/d5UbqCYF/A7pbcA/F5KN/DttGv+/uOf6gAr0Xvx9JLur+mNZOm
	 u3x5dZx/XgoBupBQMdWidUnAAvFfAwgB+nz0evorT2Tnv5ypseCk0Gf787xerSS1Jg
	 jxKMMfp6I+rj66T+k3q/4LKaRQ3eNPwy4og5FGL7JRtczUeeMXtcpXXJ0ek1avqjW0
	 reQSOmjd5yQIw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GObAjOeCBfjQ; Thu,  5 Jan 2023 05:51:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 821B98206F;
	Thu,  5 Jan 2023 05:51:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 821B98206F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 611EE1BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3853841947
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:51:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3853841947
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0LVHSZ-IZi7N for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 05:51:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0FEED41944
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0FEED41944
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:51:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="301817009"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="301817009"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 21:51:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="744098095"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="744098095"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 04 Jan 2023 21:51:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 21:51:22 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 21:51:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 21:51:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KV6B6/BemIK3s9ESy3ySLCFP53Nj9UWVrZ4ienxcm+SII2vi5gSFYznOc1sqxEo2Bis41aK+1VdYbCJABCQtQLD7dLxJnlLhYlUiXsP2kqriMWjvChbt9bmiGDEWfmKTQ1qi7/9d6qEMBE6sy6VqhSvrS9c9ctFXRq115heYln7cspySuyZr/dCJRqOd5gi4iu/MhoILKcDzDgwSypcPJYkxBch4+ZbZGeblRsZEQF1rftcxgjw/wuteDE3vGT8KjMS2BKWR+1cHyBy2WFnNWgAi5hBr80A4MmA4+YaUnzL3DnJVbFFOdMPgfl3kGGlKRqskTdx7+KFbW156l+9QUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gyjTjaWKu2Qu6cS8bEWGOnyHL1v3V22RW673+bYi7QA=;
 b=BQD7lMJ0eBX285oqSsxLZjdT8Vh8FCG6vMKTRrRAgAsYofT78HVAl1FFmdQpPbekRkjj3obv6juXIHwNGtrncB62+ZcVJHy4mar2MVHItwJsEGaRUQ/zRGgfublFRz3iaUHifXudeMHHXfRUU++K5qsWphz1mJPFjHnffD2ybizM9Dja8eG8Wf/uwheThpVpYdGwug5M/qROGSnAF+knf9mezeESSK1FGpYSTBj3NoEfCRBM5w6nuRULMgNntUxAaJMRwgTkvHxqP//a3OImt6gWDyERliJz0kkg5qrI7O6QqXZn17hwndj95bogzCEpybNbHqaDHP4euXXFyDqIiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 05:51:20 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 05:51:20 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Yuan Can <yuancan@huawei.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
 ice_gnss_tty_write()
Thread-Index: AQHZChmXM9mnU875EE6KLk6pE3L5Y66PfyqQ
Date: Thu, 5 Jan 2023 05:51:20 +0000
Message-ID: <BYAPR11MB336798D3BEED61EAAFD56F21FCFA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221207085502.124810-1-yuancan@huawei.com>
In-Reply-To: <20221207085502.124810-1-yuancan@huawei.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DS7PR11MB6197:EE_
x-ms-office365-filtering-correlation-id: 364ac1d7-f4be-47bf-b3ba-08daeee0ded0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fma9UNiBcWk0/6LwJUWxldp7UgkUMQb+l0Ws/HEXWWd+Lrh5nYjy1ar0r3nhB2GyR/YJ/LyBGtiP5p1x+EpQsnOg4+QSFtHfZoCXiB3GuTV/NQcz6YHwC6jFnGp7huTpwWECDtPqQImUAlrVzetuwlkM5HZOd2TkaoL7x2e+1HqmoWcjEVbrZj6rbfigsd/VdflrjjylXyCT3GWANUHMfnerI1RcDcdWwA+BkYbPAJ1Osu0igps40O14thsRGaA1FSGLjqPNLQgtnUa+aqZ+fIdhyAH+XKO3cHInyq9SLMJmnJpjWFMvDAU9pOIhQ05epfbYNvm/wVhAQ1HeYGNKsy23un+n9rsl7obhTheuOdZaqVDKcY9NRqS5Ab/OmapJAjpzFBJWb8JUiROEkbe/dM8hRvrcYrxWJTxQdzaymjDmEvzYNF8sxeAWIBAoJFTVfa3jH8fw9rho0RRxmj+3jkbDW/7N6uR0TFzjHg8YeOFFT/UURwTzR8A0uT4GdyB/weaZSJz+vqXge5AKWk3XyZzVkGrjcdTNmW4ZPeHMyJQxaAC23GIM7U+n3xJzOz8UlMkjKj7w33SI90obHCKWHjs6sXErZdAb3tmcTXDMIAajzkJFtnVb1NcST7W7Ou5GwSFk6EpEZ8oQPSw1vkWehnqH/N50V9VMkR79KiN2air2fx4M+eoeHkjIMzq9HQapB/RV1AVV6Ep3NxVouoHSmmfOZPydYgwi5WGXzS5IfsA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(376002)(136003)(346002)(451199015)(41300700001)(8936002)(66946007)(5660300002)(8676002)(76116006)(4744005)(110136005)(316002)(2906002)(52536014)(53546011)(66556008)(7696005)(6506007)(71200400001)(55236004)(66446008)(66476007)(64756008)(478600001)(86362001)(55016003)(26005)(9686003)(83380400001)(186003)(122000001)(38100700002)(921005)(82960400001)(38070700005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zBnb2xAWXA1XKo9pqcQ5B0HY1oAwUA3QLw+OB/iO5SKhLlb2LMqMZ+ng+txL?=
 =?us-ascii?Q?v1kOxXan64Nd3b6M61vrV5tp7nsSUzmGpH7uGIwsDi5KaK6TMaJKZUSgm8Lq?=
 =?us-ascii?Q?Jw5262yg7Xfxw2g88CbCnw8vAEe10l2j77SV+A5HWMnb7jVyeQV5aXz5LaEo?=
 =?us-ascii?Q?IN0XnbgPX8PJQvEnr5UkguBrDkzk1d/+KK7AHdOdQCCtPaQmbno5OJ/Dkvcd?=
 =?us-ascii?Q?Vk2owkdg5jS6HKedO9j+Nqob4u05d8a8OmUcnCQqwh9dTGo7/Wk7DPD/XYIK?=
 =?us-ascii?Q?lCIOIItV/hOt2TR0JescP8Y6Qh4RzO0s/MVp0eyrt3gvxLGrQ36Nnj4O62C5?=
 =?us-ascii?Q?hQVO3Jc/WrOJfWLDSi0adOzdp5mDHOe357cLjJorYlNFqFUg6TybXL9y4+3c?=
 =?us-ascii?Q?imjHbXcHoB6qSSsewyJ2rvIazZMygdQYPyz0or+TZjLnNDJuQgPSGKZvwlwJ?=
 =?us-ascii?Q?PynZP5ngfE4/DN6jZLK+p7it4KVXusBUTAHQSonItqEpTie6/Md9215kRRLy?=
 =?us-ascii?Q?Sx09Xc6J15P4uLvaX+ZPlMV+aLgx7sl9HX/UebYOpr5K+Tz9DHE0PSYzWQTe?=
 =?us-ascii?Q?JdoO3ry9wKiPFzxRBjA8rZDt566uV8lEDMBMF+xhHH3YVQHmgkUy+un9cEZv?=
 =?us-ascii?Q?xfm5BzEJyRaoN3e8LSGGHXvA7EuXgExK6NI3zbCCFxlwPyQpAP9MBJDUL0+q?=
 =?us-ascii?Q?WHUh7VvMNvJIwJm/R2cz0WjzDVGMNAVh7uwocuV7zxqL4zMEO8TT8f7jii7w?=
 =?us-ascii?Q?X9JFsci9XihJk/U63My7ub+PCHnABfOFHGJVIXxLPVaYWUia0Prw+2qLcD9s?=
 =?us-ascii?Q?t+RcNNfqcM90CyvQ9BqUtaiaE8W+Fa2vRZROcmgxCuQrAkNAc8fE+A6sQ8CG?=
 =?us-ascii?Q?ya5boIz9xcVYyeLR+C3tSUu86QhofceX8Mv2NYw+ECWI6TIKzF++EQtWHrma?=
 =?us-ascii?Q?E9wssYHuxbBuboSZxiP/UgQhEsGnV9C+UMpYbHwvTPvXvwAjtYY4mXZJqK8o?=
 =?us-ascii?Q?1oeD/1Iy9QkK28rNeGi1ywa/MyVnTsGYhOeuRcoXyNPZrdWzwFQeg62i2GFx?=
 =?us-ascii?Q?ETIjN0bmH3y4ObrSXsUNEZORJoEOHj1NlzIDDRfk0nzhC78Q3mTm8ew1APjS?=
 =?us-ascii?Q?Jyo3albuU4+wcGByBUn/9r66aNgN3ClfBjK7ImI1yxYlMi8HDMVPv0MXUpa5?=
 =?us-ascii?Q?9z4gHdenleKnOdbyefVoILlKBT66gLJRCAtBzxVMqSrQ4SXXeAje7jy2BHVi?=
 =?us-ascii?Q?Qbk2xluCZXjLIeLXePToPZtXXG02rIQZjU/d8YQEm8ELgqytMQmfBZDXKADr?=
 =?us-ascii?Q?a2qQhLhBKVpPqayvK4D2ZsvhW5HGBDJCU5BG6rGbQJbuA5sL6tKfrM+MXxI2?=
 =?us-ascii?Q?KuV+ZHy3QbUBRtqiPhqzqDGlZx90vDqndoub+Y6eEpyP7DIqcdmNkaTahBJY?=
 =?us-ascii?Q?Bole5y6O24hibLTTZxSfmyL4Wwa/hn57fWjfwYsurIJTumONRmLi0X5awdvx?=
 =?us-ascii?Q?w5e4Gd8TABotir9HJy5xV7XyAvkGzof06YZYJoPFMjJlimJBXoYR7VRJtK3c?=
 =?us-ascii?Q?X9xEELa/d6FzcMl92KP3sMjGZGkzuBF3BdOq7K7V?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 364ac1d7-f4be-47bf-b3ba-08daeee0ded0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 05:51:20.4338 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nKq6MoZF+vZSG2I1/LqeOTzuhQ7tBj+E0lk2VtEHryVld2rz2en5EFqlH18YJj8+tzE5npX/AEcJPlHsbxXvnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672897884; x=1704433884;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YzZgxKHW7jypRgEpZs1ibC7nq4EXnsFmTpq3tLrvdds=;
 b=YktTisRhAyxKtzrWR6+C3wNMQn54PS02fQ8MBTCHJrHT+petH/S7z9ss
 UNVI9H7OgAltYVT3lqqzNq9RJn+KUwNDTjO+KLXJPmtZPud9+5KkDjzz1
 ccY4W3UdreXjNINLCmh3T9zzX6zVOO3XDSZIGXHtyAUF1N8bC2ZCyK7WE
 BPQfy6c9iTOt4IYjQkd49AeQhfD4ZZ9TtWS15MUFUbN6U8+Q7pZ7yBc5L
 nJPYDAUjz8mdm/bnuBWZakx4szwt98i5E2Xgu6JgGGQBIJsZaDUmyFg0Y
 TG6D/z2E66k9cbTqQ3fV7MHrkMy8JS2pvpyBDHetbJY0Z/oK1R/Hj3kA8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YktTisRh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
 ice_gnss_tty_write()
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Yuan Can
> Sent: Wednesday, December 7, 2022 2:25 PM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com; Kolacinski,
> Karol <karol.kolacinski@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org
> Cc: yuancan@huawei.com
> Subject: [Intel-wired-lan] [PATCH net] ice: Fix potential memory leak in
> ice_gnss_tty_write()
> 
> The ice_gnss_tty_write() return directly if the write_buf alloc failed, leaking
> the cmd_buf.
> 
> Fix by free cmd_buf if write_buf alloc failed.
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
