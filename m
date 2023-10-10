Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 684797BF9CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:34:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E0D94417AD;
	Tue, 10 Oct 2023 11:34:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E0D94417AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696937644;
	bh=ZC4M/Erd+4An295fuc+jQKgZkXX5GXmz+lP4jg6MZTI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GugXVJunh6rlexU/0Yz3QdUjrZR4D42hkpENsJHG+A72T2l3HEgoYMoHLyYlNUfDd
	 lkBoLevabtG6rPry4weUBKW2FzJ9s/CtlYOyvTjR2ri+/0aJ68eAo8lxZpJYgxxIac
	 pdpAzPs8aQsv/qJ8XzZNcNydUzUAQwiA/+9CGhhPfVFLQOq8VVzx+3zjrOHYQZ6f3P
	 ZQXCe74bIiQqZj4V0YnhQQe0saFRrLADm28wpMKq8ABS2Mazpj1lqmSpCttX19ExAt
	 zqy6xg07ns7bDAev6RoWlzZ3vooEytlwihz/74ukgo15odQukpBbTymUH/zwOBsitk
	 nMeBSJGCKyRVA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 752XE0cyXZLX; Tue, 10 Oct 2023 11:34:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEBC6410C6;
	Tue, 10 Oct 2023 11:34:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEBC6410C6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 764601BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4CA0B40592
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:33:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4CA0B40592
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPbLWjcHt7yS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:33:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15FE14054B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:33:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15FE14054B
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="363718776"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="363718776"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1000659386"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="1000659386"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:33:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:33:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:33:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:33:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:33:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IqWMdkweBCJSprHgUGQ98hWYqtcUiA4VHPI5Vw/s56yqTpC+V5RdrnhwC8dUrfP3XVYKniBtdPkCr7qY/dOOC/aFkxpsiMjxLnAYBUY5sfenOqSe/FXpr8QfUduVl6vYCV3Db9ApUUUc0oN2eYMyAyleOB7E+xCQrdDD2kdUWjXuErUNNa19bIMb8GlBFVjUdpnCyTaJXGYiquwFuAwK+AGJS/+J6EC/tRVlT1twl6GkMxt5MLI3zG2lE5pIVZoN3zCZNS1cLUEMUH8JhzPyAV8KFRIOqH5fpDcIefIH3VPn6eFs8n9HZw9O+bP0hPW2CVsmOKLlGCBonDQ8xCKdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y/0Wz2/17PLo0ji2xWg2+YskhUqTScD6DYlIfyw8SlU=;
 b=bI+2TmI6cGu7hcP6yrJ+sJ3MXKwviPagYvx0L255RgQFlLUUqTM07gvHVeSpKmNWmtwTMgL2TQrGKr05240OOgAsFKNiL2djJ+7lcYquCME7tuZ+tp7JUe4DyLTieh46cjX9BFG9ZDbE1QXIotvJEx+f6AV/IEy81UIBV+Dcf9J+pbbnyayZbjZWHog2MLveyVeVHbvYQ9sJU2H9DHdpvsWiGQI1KknZyIRN0YNZ0bYId9EvgLE8ZC7da/JnF/uBIxGiUikKUqPRGsSL5VO3b0IhAO++txbtd6KPCV7rgcCTUAv5x+hy8fxwi9RYYLr67R2MvWcwZUEqSoQ1lk+JzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:33:52 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:33:52 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down, don't
 queue watchdog_task if comms failed
Thread-Index: AQHZ+xBeYEQ8RRhVHEO0tG/vOPGnfbBC5SGw
Date: Tue, 10 Oct 2023 11:33:52 +0000
Message-ID: <MW4PR11MB57760DB311AE3726FE193005FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-4-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-4-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DM6PR11MB4562:EE_
x-ms-office365-filtering-correlation-id: e95d0854-d823-4d29-59df-08dbc984c7ba
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HsB9hnS0L/tdYw/qJr5C8Pdk5z7DF63psWs+49szHYla+m1fZ5krT/+WUGEQHVzt54Y9ZE7FChCQ0/L5BKoThIE9uEPujjj56sOH5mZ/0nLw6BYV3G8ILRjay4TVqc6Q7t6vhP+ifRL9RwV70pX8otpEILU0vLwWAJOOvLWQApX+DS4lBTN+9KJRTx6VPXwlXlmGavo6jtdDDLThjQt7MoQVOCOy1CKZ6g2RTJOpvd3H23xbLXGUMri59wzSZ9Ud6nQxVw+tX2NgVBiqRhDN1XYWFyD1AAkPH1b+pEv+5AawmEaosNjL2HfSxpJj4zg6PynvU5SDW8Ajxi4WE6qrIZfXCuiAVZL+i/YozbNPPlQQvjlEv0mcfaTQT3A0Ja1o59u87Q9ZT1Z/PMyqarnwgA4t8QfBXXdwkNpV2ypMBtElVUTRoHKdVVb1vU3VEZswjZqR2tyc4Ij6yb/+tc1bGodmyYxl0VzDwfl+6mYtrEt/rf5iQwvEkWYmIPJPLFiJwqDdebuEWFvh+hb1cEKBrT0sCNakwox+WK+XY72x1lDU9CRpQ8QVfeEmFnbDUpzq5kxfoP+1J962RZGp1IjDW5oQe1QquQVAPT+LsktAigE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(39860400002)(396003)(346002)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(9686003)(53546011)(107886003)(6506007)(7696005)(478600001)(966005)(71200400001)(26005)(83380400001)(2906002)(5660300002)(76116006)(66446008)(316002)(110136005)(66556008)(54906003)(64756008)(66946007)(66476007)(8936002)(4326008)(8676002)(52536014)(41300700001)(33656002)(82960400001)(122000001)(38070700005)(38100700002)(86362001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4+i3s62RB1AsoEhsYAVkoRHOsbTde0ZPlKJyuTSEZkJkdUAjCyzVSZaWRvlN?=
 =?us-ascii?Q?VE3AKI5vqAwcbHfL0n2/ONur/RnNi3g1H7Z7oUZCHCSXkb2mLiR8CIsFmVfo?=
 =?us-ascii?Q?+NvwSyYtdlq56Lva3RUVzwZbAfJKndxkPtLAIK0uYRM2mN7uOeAVfh5Jx32v?=
 =?us-ascii?Q?BVJZ/vJViBLgsKeJZhEjQ65Tcv6j9RLSjExc+f+Q8aYDUZTByRgGs0YBDv5o?=
 =?us-ascii?Q?qx9XTPX1bqlMmZLZqqbcpMcFJoZE1gM7OfxU9bZRcxqN39ihHbADUVk9/MAv?=
 =?us-ascii?Q?evnQNUpLqpYpWCPnmdgGJtME5VRGAVBSmtSU+UM6yiLILJp+gU3I8B9Xn5Jp?=
 =?us-ascii?Q?5VXuBPihzBKJTprrAWA5XBAtLOuoMm1U45cOnowxBd1HICRj8a00wdsEpik3?=
 =?us-ascii?Q?5gCCF4D2dk2CLPHPzc5UGsdd1qnsMDPradg9B3Xz28sivY2NehDOFiZno8o0?=
 =?us-ascii?Q?//mEB70pZG8tS+PL6k0RWdRlxV9TAGVrA3uTirGYrJb5FW165CduhLHIfKRg?=
 =?us-ascii?Q?qFSteZUcwIAk2HdDF7Nc5nVBBPf/HJjeuOyImvRZbCd7rNl0nk86VevQcdFL?=
 =?us-ascii?Q?+u3oHHdPGikICOx0vosOD7rKOOCok6MvhdSpXlGbf319IHnikcDOkq1xONm5?=
 =?us-ascii?Q?qiQTkOrAZoRQEXZAQlOAU5wdZ1MwTp2aCi6XZJokAEDfBy6qrsYGG+Fsm8KP?=
 =?us-ascii?Q?Tch6kC14Fou5UFrlo+FE4xwn2cAvmo8FCayzfE6O6N72Jv7/ht8pBuS7cjuJ?=
 =?us-ascii?Q?ctGkpMhkQGDdnwbcJZL+ezSeYpjoJ0TeX8xS92K4W3EJAsL3jAi5uI+Pie7b?=
 =?us-ascii?Q?Lf3scmdgd6SdK79T1Q7vK3Wk+g6YmCyXKkrwPNT8g2YQYedZnuF+zKru0hT7?=
 =?us-ascii?Q?/+LmVs8gDKwKlsZ5VYuoV3Efl65uhkJ+2U97v07ZYWAIn0lbaN3tZOBmVpJT?=
 =?us-ascii?Q?FAgOUbLrns1WKF60lfVgSGeWVYwKjZGCU3D53em7rbeUhPwt+Q/1FekoHa+L?=
 =?us-ascii?Q?+/oO89t97/3XB//nYG9Dgf0TWwtpndT/jAYuJKSYBwgqaQrMrZYwATLDK7AL?=
 =?us-ascii?Q?WNhp+7k4YvgfpLPAPMtA3pRMhvFpDFbdWzAfBSVPLcydPU0xDYlbsKVU2bgd?=
 =?us-ascii?Q?NlcCV7Ara4h0YV2hzb1jA2MqB8w2zWZPbW+0gKAJzj9qkFCVXGVA+osG0Gqb?=
 =?us-ascii?Q?zKsHPitLDLm5KSmtN5JE6vK7w6oAmLM07FFkuAVUsV4qP9kdlZxcSS+4Nua2?=
 =?us-ascii?Q?Q1wNd2VNbd222f1GhX6tDBCIMcGrcDwdQBAjFB1tIl5jNSJfB2/R3ZPVkl3n?=
 =?us-ascii?Q?SPHwtCODR8sv6JkQPf9wtOxAz2w+qjHfAVCveQ4w7VpC3/DuSykL6IjOm1to?=
 =?us-ascii?Q?C1RyIODLn2P2yhwv74ALs+RG0auiS0tSdAekxxinEdHCAWyj0sRPMIbvGpMl?=
 =?us-ascii?Q?dWh+Y+vm4aOSR2QTM6WY4OQIISfNp8rixbtO0b+uSZkH+ldcd4X0SQoxN8jw?=
 =?us-ascii?Q?pq+aHPxoyo3Se/q8g5WFNQGkF5bUjVzmJgvTOt64woamd2lrs0V01MFC4tO/?=
 =?us-ascii?Q?zNwbCZhyQOPu1PRbhe1rHGlAMDxba4Y07wq00Ifv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e95d0854-d823-4d29-59df-08dbc984c7ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:33:52.6241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sGY0MhwJs2XG9OQafpiKEzBwUjK77rA8JddE0JGvhSlPMTmEevtkKnS5wf4oODpcnebqjekjpY0qljoHvdZKIsIEJ0Tz7tmUAIy/79/2IC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937637; x=1728473637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9J0JfnFFjZ5mq4Axi5zXnHY79IO0T+g673zVFAAKcBs=;
 b=kgxm6En1A9YsVtvdtU3e5sEeMt79ztiuBckv/sae/mGh0mnDPRHopM24
 c2XZz6Z1SWJD7kTUKNztJxmllnf8IgRs4FzOaFhnv4/TjzKssqZh3rF5W
 AKuA4JFhVAT0GrtQU6IfPe8nhWiBRe5GmZdjTLlFUFoFxLupfNyW0NhU9
 CjF9jJLeGtN7Z0a7eDcXsfI8T7qg/fQEGWrOf8sdtNSPKmJji9Au90Jdd
 EJ8HN56t4SCx7Q+gzLu69/CuwIxNm17RnpvsefrujJeff2SRIroukd4k3
 SuAK/x2zxGxf0R6UEyu7qiOmjkuZRDakb8BNz+S+x6Mu65gaRpZwfo6qx
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kgxm6En1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down,
 don't queue watchdog_task if comms failed
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Tuesday, October 10, 2023 2:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 3/5] iavf: in iavf_down, don't
> queue watchdog_task if comms failed
> 
> The reason for queueing watchdog_task is to have it process the
> aq_required flags that are being set here. If comms failed, there's
> nothing to do, so return early.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 03156ca523fe..0b808fa34801 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1420,8 +1420,10 @@ void iavf_down(struct iavf_adapter *adapter)
>  	iavf_clear_fdir_filters(adapter);
>  	iavf_clear_adv_rss_conf(adapter);
> 
> -	if (!(adapter->flags & IAVF_FLAG_PF_COMMS_FAILED) &&
> -	    !(test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section))) {
> +	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
> +		return;
> +
> +	if (!test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
>  		/* cancel any current operation */
>  		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>  		/* Schedule operations to close down the HW. Don't wait
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
