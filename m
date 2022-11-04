Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2738D6190C3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Nov 2022 07:14:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4882981FD2;
	Fri,  4 Nov 2022 06:14:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4882981FD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667542452;
	bh=RxQoGY+/Ttb4DNiZHL5Dug9Dd98IC/hx5mhE4y2iBKk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eaZpsye8COFIQ9bi9/4uKIH5Q2BrWHNiAmhJKFRpk4OdOHogMNajNTwrr1b18IpHg
	 IL4MQkOujNTKsQa9dukN9cN4P/vIxByIO+QIzn4pxrVgj3W3IXtcCY4/z7ers4bDG1
	 o5OEf3OhOXGQ8h0kSR/AykFAyjuSitjQ2guE8TQjZrY9rYRnAqe3vjMKj/08BUp33p
	 NevQXfgKa5lRIIWjrQ+wNnOSwXUpHPMw7rpHqIINe6wijI5jnzlpHHd6icCpJF7Y9l
	 X9731SGjgOlxfJYMLK1NEnQy9CdIK21jJAoPTNgS1EbgDnPsTuvEzSk1NpmmFfW6On
	 yvVaAoVdYvCfg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PVvRAv_-uiVM; Fri,  4 Nov 2022 06:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CEC181FC8;
	Fri,  4 Nov 2022 06:14:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CEC181FC8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 609B01BF584
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 06:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A6B74015E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 06:14:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A6B74015E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rzTWVAjf2tLJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Nov 2022 06:14:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3360840124
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3360840124
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Nov 2022 06:14:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="396190820"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="396190820"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 23:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10520"; a="760222356"
X-IronPort-AV: E=Sophos;i="5.96,136,1665471600"; d="scan'208";a="760222356"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 03 Nov 2022 23:14:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 23:14:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 23:14:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 23:14:01 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 23:14:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P2VogmsK7bjM6Qx2o3o6gSl9JyBJhMh27cTI8uFzXvm9brCc1CutO4heASemXhbTqe2YWG1tkSSbSRi9O/arUXw3X+x5FvINvP/LFSzZ+8ucW0SC+dMbnBBXtoYG5h16Vy/u6hkRa07fmrhGgAvn9cLIeA0S74wk2v1JbQuijcofGXHJAO7Uixkc+k6yBC68Ekzkp5oZ64D4UGgERtkeYyRJtDN1rkrbkoy/eX9OOwLN+U0u7+QG6J2FSblJr0Se1nI5hq/HymHhNqvL4EWq8YwzXRkptZOHEAG+Dyz7O9MWdjQkTFsqLLna+DlEsnVPY48Z7p7Q1xRy8accqx9hGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b2aKHMp4qMKQkxGrLDKDh+fR9G0JVYcMOSr0IPl8MSM=;
 b=CE78K1SI07pu+Bi0sxfEY+SYPLeoPo1tYeucL8gUSOp7XhlXEy7MTICdhRrBbfBmlNalJbyg7gNpeep1kN8HuOPmNQczBiaHXM1pmPrcna+pL2IiKWb0M4PzXpLxIMi9Ju7LqMj2bVKmNYbYWkv8XxJQZZtgZMAjpa62PIbto2mFgyincxDaYAQ8zmu1VPt0hQMjpvaugEtqvG9AmMm7y/wD0otDPGqcAriyLZEiOyNotaBSUgx+8910YYHPIG94iUmtTydfkzRIRbaQGpWBtvGntdj2jev/o3eyiakKqn3Bhb+X2RdA8Ej4BdNF7FQ2bZKdaPM4yj2eJ4SoA3FZHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH0PR11MB5345.namprd11.prod.outlook.com (2603:10b6:610:b8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Fri, 4 Nov
 2022 06:13:59 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.021; Fri, 4 Nov 2022
 06:13:59 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Maziarz, Kamil" <kamil.maziarz@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting default
 xps_cpus after reset
Thread-Index: AQHY54GJY7ox3np3pEunCGut1MXhKq4uWheQ
Date: Fri, 4 Nov 2022 06:13:59 +0000
Message-ID: <BYAPR11MB3367C479D73F9EEE5846B8A1FC3B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221024081942.34809-1-kamil.maziarz@intel.com>
In-Reply-To: <20221024081942.34809-1-kamil.maziarz@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH0PR11MB5345:EE_
x-ms-office365-filtering-correlation-id: 72eb3926-bacf-449d-0457-08dabe2bc35c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U0p2M3q5hWl1dPJYV+4YMIkOhsTeQJBBO6np+OLXkpKPNnar9HfUvIFQjzFbSLU/48ZnqpeA4DNN08MHC1EaDZg7JffSw9awVMxFtne+soM05D/jQmFu73K0iiViNP4saNM5XKoBt/UYdlWR+DfvRfJMcoWl4aBqq2O5vD/SH8g+F/CPssztjEpRe7WH4HtmkqZiWK942czdW18NnPBqk3/LrmXnn1d+cIiZ9t9S58JWtzuRKzjzjd2BGKsGAGBQ2zBptIv2G7cqLRo5w8nuRmRlE2guoH6BhQkhb9fsEPRl6bzN3rPJo5zaoQz1HbcTHMPE1K59fO8kH7w13GOGXUOo75rbdx92CZBNrtvTqJMkvI0rScPwTRIS4B8BbTtGSYaD9Ad+KZriWXNyh7/B2K4tVs5nzIUqx9JY6IjxKqHvaktbxCZdO+MSgA4ypLDs4xLif0ZzaGKTRYgqdyH0S/Yigf6HZBpWU5c//EyQ1YpSaTC9+dl5ILQ7yWNFfW3BM1piyELuadVJ9e0v7cOIohPjCFPdyNwZ1jQaoZ9qDgwgZnOLJQSPjUCuZvPYz9NnSSRs6YsVDvtA0wFqaxQNt307OgJILNR9uuXjPGy7mDtDy8aOuEWjCpPuc8VcwX8db4+fZMuE5UY3paCNQ6qGme+X8Q/cDBJ90xVSYZ+AuYY522EYwBwsqzOobvVsbpf6nCiyFjkp7Nnr4S2bENJ29GQd4gchU+zs3kcPwt+lvzWLtGxscIexInWT60wFxrxpxdgw+EZGLBkc5nSiueEQkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(136003)(396003)(39860400002)(376002)(346002)(451199015)(86362001)(122000001)(33656002)(38070700005)(38100700002)(82960400001)(6506007)(26005)(4326008)(186003)(107886003)(478600001)(9686003)(55016003)(7696005)(53546011)(64756008)(71200400001)(76116006)(110136005)(41300700001)(2906002)(66556008)(8676002)(83380400001)(66946007)(316002)(66476007)(54906003)(66446008)(5660300002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2cZVM8otmtMVtlxTIym6fsU9H3Q8v5osXWzMSIRj2A84B5aO38slCLKvWudQ?=
 =?us-ascii?Q?4Pz+pt9JmiMyPcCHjUCqI/dOA7iK82i9BrhK8tHaBkQhlGjJzVG+XOZlqKOO?=
 =?us-ascii?Q?f1pY5jJyi3Nu7BAsM2h36hr3CuH/NBF9z7Lr3Im1Ht7X8TZri/HM1D6/3Jwy?=
 =?us-ascii?Q?JdcjZfffNBv5b7GNV6zPmPCB90xJrAIP7YhWBdrM+ena3j+4huZ5oDRUEolp?=
 =?us-ascii?Q?2hylGV+fWNN00ymagJapzYYynu9gDQ/67xhjE8KSmjtorJQBVzXc2hgoZ/S3?=
 =?us-ascii?Q?29esB/9ySjfVpDDGdGCdUNZz+PgZy/jSXZ4lWlmoCz6F04D5Uilk5LjpdKC2?=
 =?us-ascii?Q?yiC92aWTfOskr8HM4ZXj//1XzGp0AdNS8/dIEcIDNU6Qi50cHtJT8cjBoS6L?=
 =?us-ascii?Q?gCrDaQqcyl0g8MCNL/OceyozmO95ZPhNkJdHZFTHX7n8AOhKmR2jUq5xfkte?=
 =?us-ascii?Q?FnAyz/a4psRRpyo2h8kBvPaSF+oy7oSE0op1+F3b/MdqibuNzRvjkH1DpBa6?=
 =?us-ascii?Q?eerDnthZ1U7GXXpiviZXf8+t1fj35DYG+xqUNoV0Nzgy9fC0suvk5/c5Cdcr?=
 =?us-ascii?Q?dcHlWvE+wMpiIYrWlOJVbq/5Dueu5uvMxtUn7dk2Ll+aGWgEib8ieP+m6knD?=
 =?us-ascii?Q?fiXaiQMHDSmKBxoyppU93tZRyNgGJ6yMoaRt9dGcopHC6Um5/aSprUNQjVob?=
 =?us-ascii?Q?Kfd3ZS6yWN4LBjMkroawV9rBs9jaBwtqpk44y/f5jcW+mQZl7t/9rlf7uyka?=
 =?us-ascii?Q?2pjBwOFL1kIveIHDgosl93usO6W0T2LUFGBtnU87ysx3NkN2BO8n08QyVObI?=
 =?us-ascii?Q?uIM3QTMIlURFOC7dZjEgxblLo6zJsRhraCIxjiKIFp6z5eMfwJR1LCtSvXKX?=
 =?us-ascii?Q?h32v+jx0hgtOWk6Xaj61Y3TOsfCaLOiR4h5olMupxJrZ+DQBMCw37F1AuO0z?=
 =?us-ascii?Q?AFYnZkFlIUtVIsFAbdAKSvhJk0vM4vfXjBVtZhbnkCmzRPTXB/z/hnb7cZYp?=
 =?us-ascii?Q?LQRW3WDxALhQjzLTPDm3FBhDxI0mAFS4jJiOTDwi80AIl/EUJCCmo9oqfi/B?=
 =?us-ascii?Q?L9XlG2Z16X11cMju6kfUmS7MibTMLl+/8qcSYipmvLBEKDIrEd+OA7+xO6BU?=
 =?us-ascii?Q?e/YNn5aB+Q/Q2C+UivtgbTeuBk5Y6SXWFxZY9fOJa/Eyk28GdLN4/Q1pClC7?=
 =?us-ascii?Q?FLo0885FM83MrtAATzWJjk8jJZGKAxkWCFve+xXd0CLaC/CUjm3a3ckDasjd?=
 =?us-ascii?Q?tRQJ3fGO4qroGsNERnx4b11m/kiXHCTvUmUWrFxzFl09zYmOgwv8qgbwmplg?=
 =?us-ascii?Q?LhNE58OjaUVmulhzI+GH3/p5dzBYHQsQlYO7gqLbmw69FeKdoof5c2sY5egi?=
 =?us-ascii?Q?NU//0pwLhALRl0HOWGNHmbkvC16q26daPXZQLOrRqzdtojyebGv5KZghropY?=
 =?us-ascii?Q?MTQrX1C81TMwPXzaLPRPyCET+5ZYM9W8Q7aJOl/7fyhINklELlV8VXu3mOdK?=
 =?us-ascii?Q?SLrdSdGN4lbOTHB61zLLSZfaRyb3VX9KsxPyxT5ovIKox62Yux08CUIWIbjZ?=
 =?us-ascii?Q?z4nUZUah0VuOdMqgvy1K/2181fU+gVVk8uQ1DUv5?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72eb3926-bacf-449d-0457-08dabe2bc35c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2022 06:13:59.6648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xd/koQFhlaRn4OjETCKkZ5Civ6434jAqgAhQshZHqahk1Ud5eR2jiSERSH/6jH01/SMorpOqt0KTbfu1u9W4ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5345
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667542445; x=1699078445;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/h9AaQvhjFl1XJ/TQ5GIl3dL+44UT5B3xsXKPbjkrfI=;
 b=BF8MdbUC/KFmydLXdz1bZklhw/9/jLpocAwd3WsxHDSi10BhTrRiHjeP
 s7OitDCsKMoJhghx9lvhIYR3gplpH7CkOZ9LAmOL0yoDDuudDddyum0l1
 OQcf99HOKNGPoHCEobvpqEx0EAV3R1y+B3Yd6iHt9soTVUO6WqxwG/XUy
 LurQ6C3B+uthz/lsXF/uRww6RFmzsdfo6E9jPZpgHgW0r67wo6MaYLV4Z
 Adf6wXyxqInsh4crXRB9MRJsvei5K6PP5b0s3sdAEPH5ZjqC7puJ9d2Sn
 QcLPET2sr67Nm55nc+MCGD6npN4jmUs7j0fXHDCGQt5pF+ji0JG9d24Uq
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BF8MdbUC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting default
 xps_cpus after reset
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>, "Maziarz,
 Kamil" <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kamil Maziarz
> Sent: Monday, October 24, 2022 1:50 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Maziarz, Kamil
> <kamil.maziarz@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix not setting default
> xps_cpus after reset
> 
> From: Michal Jaron <michalx.jaron@intel.com>
> 
> During tx rings configuration default XPS queue config is set and
> __I40E_TX_XPS_INIT_DONE is locked. __I40E_TX_XPS_INIT_DONE state is
> cleared and set again with default mapping only during queues build, it
> means after first setup or reset with queues rebuild. (i.e.
> ethtool -L <interface> combined <number>) After other resets (i.e.
> ethtool -t <interface>) XPS_INIT_DONE is not cleared and those default
> maps cannot be set again. It results in cleared xps_cpus mapping until
> queues are not rebuild or mapping is not set by user.
> 
> Add clearing __I40E_TX_XPS_INIT_DONE state during reset to let the driver
> set xps_cpus to defaults again after it was cleared.
> 
> Fixes: 6f853d4f8e93 ("i40e: allow XPS with QoS enabled")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
