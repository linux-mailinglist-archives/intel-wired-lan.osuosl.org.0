Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE5669692F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 17:20:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 340EB40922;
	Tue, 14 Feb 2023 16:20:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 340EB40922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676391657;
	bh=CL7hpAgahFiG8rYOZ6KyRlAmZ+r9C40r8WhlejkTBto=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gAQT76VuLXuXp4sYKZNYAmcqk+pVLudaXwbex0rRwkHyYAtZ4E0T8hbbRVR0hb1eX
	 zlvdKKtDPsmNqimERsaKZ0Q03GMEqscM1oQRVUfRe3FOhVaJAor+6aFEGTL5eJtwSa
	 +735uCDy/cMFNOonqjBGtUIj1raCo6vRUpxAYITrdk5unZp4EvUm6i9gyyToCvPnmv
	 ajrDq+HM9O4R/ZwJkzbUAcCosyrs7KSYcUmO2l71P36yNlOasi1J0LgRcS04J0OWRQ
	 K/79oq6cNWcGQ8sX7iOQkD4Qam+k2KIJAbC4M4WfJfG/wRm4ATPO8qcJ3B4xDtLtLM
	 ClsKvPOw0fNRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gti7UiD8eDLK; Tue, 14 Feb 2023 16:20:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6C4A40888;
	Tue, 14 Feb 2023 16:20:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6C4A40888
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70FDE1BF424
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:19:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5469D408AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:19:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5469D408AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vRoBdB9c1iNr for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 12:19:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1A78F408A6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1A78F408A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 12:19:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310779745"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="310779745"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 04:19:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="669147159"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="669147159"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 14 Feb 2023 04:19:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 04:19:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 04:19:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 04:19:52 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 04:19:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i5yrpbwk8XWpMX7KUtjAqa2EKow7zuyDtDO8j9WSz65z9t24g51wfauqbQup1eHo/k6bepw4ZC8xurXznxe1aqN0bxryjCWM/QyCqjXJUHnrLSE/FBuw19+PIC29GRZ6tC5qOLmwTY/Pde8TAXdkKYiRaj1TOXF94gT9JqZRAuMkcXa//eRpjWGlJQaXYZsygMZDP15Cwbxim9o7N+VQYoQGUw63yz0FZpYrmNMs1SWAb6Rah1GYSpCfNUNidSVD/jHTQMmsUmrZV+WuZ5n960cs8P1trHH/9GHVAPCa/8J+V3wcFjv1NUgO49N7lOCAIparEmRBpdmEI//NvSDGww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zHFBaabVbAoeAqI5PnOuPsmgFQoaLejL64f/OhX69UU=;
 b=f2gPclnpBSa9XHaspoxrUW4toT+63M1/f0OZe0SzTOIAEdSLbmNRPjaNi6IrmFbgEjdvykv+VvV4u3LjF7003wkiG2zWdt3kZWUQ6qAG2oxqtRsGZMG5dqOgvOCCtCzKFPASEH4xCI2p8ypU2GgNK+mn5kv/zpGLVVaLTQr8XfT8XDuyup76B9Q7VJsBprmpSlF7/hW5R/pnTu53oKqK5SC5asY/TlTukj+34cyHPFHzX+uY0ZXfEUyONILiPY413WudbsTR9balwI2ONPK6h8ZMCjAu5a5igpmwERVkC6o91ssZKIMPssIjILoxadqreHaa0p6L/ayXakxoRll0Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com (2603:10b6:903:b9::9)
 by SJ0PR11MB7703.namprd11.prod.outlook.com (2603:10b6:a03:4e6::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Tue, 14 Feb
 2023 12:19:50 +0000
Received: from CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da]) by CY4PR1101MB2360.namprd11.prod.outlook.com
 ([fe80::ca4b:b3ce:b8a0:f0da%10]) with mapi id 15.20.6086.024; Tue, 14 Feb
 2023 12:19:50 +0000
From: "Sarkar, Tirthendu" <tirthendu.sarkar@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH intel-next v2 0/8] i40e: support XDP multi-buffer
Thread-Index: AQHZP917trKTMCGIZUq1cIJWptMp8a7OW9zg
Date: Tue, 14 Feb 2023 12:19:49 +0000
Message-ID: <CY4PR1101MB2360262D48D5534018DA7E7790A29@CY4PR1101MB2360.namprd11.prod.outlook.com>
References: <20230213184610.39371-1-tirthendu.sarkar@intel.com>
In-Reply-To: <20230213184610.39371-1-tirthendu.sarkar@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR1101MB2360:EE_|SJ0PR11MB7703:EE_
x-ms-office365-filtering-correlation-id: 62cdf690-793d-41ea-30b0-08db0e85c4d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iEtbRsAjH2nKvVpeQi3mHTLefVFWbk/bOoKcULlBn/c6ZwbjBzeIe+SKyOHtT5eE40jVaghI2/sVTjpuNbd4GcD1ISEoHE0fFTuopuPTT4GbprMU7rZDmUv0HqcCkSa94PU5bcUPQOXJUpL5cGSzsGesrQAdE+WCbgQyvVi8ELiGgwjiVPhX+dspv84oi2r7e4TAlYIY+Y/NJOJA9Wu9rqlmywXxl5rnZPFjb57IttFOM6U1cjE71eAM5Sq18E//dtS9TRmNdg76FeAS4nwtVVVy4X1Wwa/pKimp43kUMR3R2cR3+YS27wezWAvnaBEv1JTJtq9WGuKEpJaoXl1rRV5viXPzK2DMHerMkANFP1mlPkhApTETvMJdzb5liVUvPs+De/uMCOEfhh4KUdHHZ7V3RFG5XTzWF1RiB2Rq+dC0s0orUQ5uyRcRRTE+r6EVSz5pby53ngeeJMZN+z3njhceJqjQs6y1byYSDQRHbMzX7FdQWWm1833p1yCMSE6QqGS2WmqlKpY9T6M7gfp+jqtIM+QAb5eXVggezjazG2zPg6MJJQaFQNzYBM9yYsB2m6WUqKxerE3h8g16KIoVLFwby13UpfWQ64AoRYB+eSV/+E6B5S39lPpreEd/KlEIVs8HZAjLzNO2AkBKlVq2hhFzEAnFYCazYAReEkm43rZoGC75wtrcCu1u2eXyJNefGcSnunvdPQFBHWliCEcoqw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(366004)(39860400002)(346002)(376002)(451199018)(316002)(8676002)(55016003)(33656002)(38100700002)(122000001)(83380400001)(86362001)(38070700005)(82960400001)(54906003)(6506007)(9686003)(107886003)(186003)(71200400001)(7696005)(478600001)(26005)(8936002)(2906002)(5660300002)(52536014)(41300700001)(66476007)(6916009)(66946007)(64756008)(66556008)(66446008)(76116006)(4326008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?FauyMLpq4/MJ4SQKpJzlt24Jd4sWybE+zX+bQRYQ9hRpeWu5zOQEStF3Mz+e?=
 =?us-ascii?Q?+axbCAN1rXbuV1tCz3I+y42QO3Fvrh+UI2O4X17GS3P67Dz2s0I8KMjY2pFe?=
 =?us-ascii?Q?zV21GhrW2VHHoIelbR+LiHItopV9jcAl6Ybyjx0iJ9n7TzyzWx2s3HuS8AlO?=
 =?us-ascii?Q?rERnoal4BbtMO54/kvp6FbObvmjFIr9Hd3X+HHQ2uXYBM3JL7bWafgbmxjF3?=
 =?us-ascii?Q?Km5MGPtI00JvWszAEp6NwF7kJiTbUqs6EAl2NCX5/xOjpyo9oT61yi1v26gd?=
 =?us-ascii?Q?vzkM/8NdLhhbZdDexULnBXwu2GJbUuqicmynNacOjEFiffcmPTf0rHzsPPO/?=
 =?us-ascii?Q?Vpl4Cq0bPMfxTpa0JN1+lRVrHSji3R7OFhe5ikPjJAQJNYCEFr2kj9fqkwGv?=
 =?us-ascii?Q?ntAKLvlkxaWAOvTYL6UHDaNkApuMEbQBlVTcyrBbqhlDkH1KPdjxLEI9ujCQ?=
 =?us-ascii?Q?D/6epqLPj6irLoHe+S9gMgj+SpICGx2SMQVGf3Srlqq7oaFVILbMEt82FV7O?=
 =?us-ascii?Q?KX/F44YRgwq0Q4lqkKfv0mlSgEBVXn906uY7vwt1LGjahbHX1ZKSMH/8iKLZ?=
 =?us-ascii?Q?ZV05N8Z/nXswjatGN2lOZC4js9YWIbdS/NS5XHJziUAU3uwDXwRyf1/ib7fh?=
 =?us-ascii?Q?nhfcxEzi9K61PEsMvzAzqNyLPEf7/9NmqHWSnyndiaQ1OCXAKtVLEeoJW0U2?=
 =?us-ascii?Q?ZFu43t7593lTFFoJCu/92EJBQMoh+JsJkpBdxNrDsjZz7cOp+f0lcdnjupC6?=
 =?us-ascii?Q?8/4+3DRFvsnrO34NI4t3NQMhWu0XYoFM9AGBqr3BvxKxGiGOIDHAhMU1IGP2?=
 =?us-ascii?Q?U2k41IuoahH+flsp0fJZg0UWDWSyLRH1BW5WjzuxDoz55sPF2ep1t6W8ui12?=
 =?us-ascii?Q?47FF9pBJN7eKmM5AbOtIC2ffMlps1cLps2NOQFvfMDN13o7qCwCEn2iRL+ks?=
 =?us-ascii?Q?5seg/m7JyIiOgElvyVgAX1iexm7iJF/sT4GBVaS58U7kQCoDS+cE5gpBLyMc?=
 =?us-ascii?Q?EeExDbZrLnuI/uoPd51Jy+EOPfoGCm5IfA6L9G7/3XIUiBVKsdEjIK+8Aifa?=
 =?us-ascii?Q?TAQe3vcm8qeR0oclDByHePvVFN82GmIDhl+jqP7/YBdiSrjhT/FVi7Y0Ro0J?=
 =?us-ascii?Q?1oW2yTb7vtZTGH1Vdi0GJVmtunetIPvU40PsbusI+B8kkob5nk+GnCl3/Ez1?=
 =?us-ascii?Q?h5zhy04oWlK3/m7HXvlqhCemgfZ0fxz/NbwFE1Cs65S6MfrYgf4+GPSoLLRu?=
 =?us-ascii?Q?uUjKZE4aljZXvMc7aX+Id7u/snBMkDHLK2dPfrM58q8UDreIJ0bGixps00Ny?=
 =?us-ascii?Q?eE41bJxbDAoBJXmHZeLCtYzlc6UCY80+hR5qFRdOi6TOW0S0lGRhoWgGTU4p?=
 =?us-ascii?Q?/aozI/pKzvxVOc8XfNc9T305fMtQGLJju9RQAadYW2T+cGm5Yarcta7w+jPq?=
 =?us-ascii?Q?VW112285IrQQpLmJGNKKT6Mj8bypZo6jqAJFcJB51iqvmK+Xv7TOWVfH/i2q?=
 =?us-ascii?Q?wapmV+wo4vacwmOhW5kJfUx+EaOCPHfmVlmCCDHMQmFK0h7Dz+AGF9KtraT9?=
 =?us-ascii?Q?5w8YQ4ozd7hKyarckM5+u/olhVBW8X8VuP3s4Nbon2nzA6J8YB6Tgvzl7urP?=
 =?us-ascii?Q?gQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62cdf690-793d-41ea-30b0-08db0e85c4d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2023 12:19:49.8842 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 69vCAUkoPfUGz1UyECPIq0lxZo5PHJWlEeFCNV2FYNpRzkdTiRKm0de5y+0rxVRutXQkhpuqutCJXkTN4fNfKyJhgUgGGOzS0ad9HcgEojs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7703
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Tue, 14 Feb 2023 16:20:51 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676377194; x=1707913194;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HABwdlOmpxN5KBMXvPxOHHTDjeGBKmgssT9dISIWMgE=;
 b=Y6fM95YgLiSnRZ5kp1BKpzZehP2sSL9YT2/QRUq30E76j4/E33nOYLEd
 o9GzSLO7AZWDLJrkrCvAmDhI7NwFpLpghfXlhn6BVkdtveAlxklj5b0HK
 MQ7y9KaNb4iqPmFfd9doVOpv1WdH/KeqGMeGVREZTL/teJi6x9Nc4Cqo4
 Uq2vI2mQ9QrboGTPLogsko7vGvjbD1M/c5wUEWPxoabV8PDFv3egHvre/
 8pP5wxvG3VeoLUzbFx6Lx0DPHsYsMG0YyrMc0tu2IULCEgQzTjTcDavZx
 TuCb+Du2jEHOE9Dh2JQLbDLCqbHopGbDOd2vOFzbWG5CPiKT9zZguWOZR
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y6fM95Yg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH intel-next v2 0/8] i40e: support XDP
 multi-buffer
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Argh...this is a bit broken let me send next revision.

> -----Original Message-----
> From: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>
> Sent: Tuesday, February 14, 2023 12:16 AM
> To: Sarkar, Tirthendu <tirthendu.sarkar@intel.com>
> Subject: [PATCH intel-next v2 0/8] i40e: support XDP multi-buffer
> 
> This patchset adds multi-buffer support for XDP. Tx side already has
> support for multi-buffer. This patchset focuses on Rx side. The last
> patch contains actual multi-buffer changes while the previous ones are
> preparatory patches.
> 
> On receiving the first buffer of a packet, xdp_buff is built and its
> subsequent buffers are added to it as frags. While 'next_to_clean' keeps
> pointing to the first descriptor, the newly introduced 'next_to_process'
> keeps track of every descriptor for the packet.
> 
> On receiving EOP buffer the XDP program is called and appropriate action
> is taken (building skb for XDP_PASS, reusing page for XDP_DROP, adjusting
> page offsets for XDP_{REDIRECT,TX}).
> 
> The patchset also streamlines page offset adjustments for buffer reuse
> to make it easier to post process the rx_buffers after running XDP prog.
> 
> With this patchset there does not seem to be any performance degradation
> for XDP_PASS and some improvement (~1% for XDP_TX, ~5% for
> XDP_DROP) when
> measured using xdp_rxq_info program from samples/bpf/ for 64B packets.
> 
> Changelog:
>     v1 -> v2:
>     - Instead of building xdp_buff on eop now it is built incrementally.
>     - xdp_buff is now added to i40e_ring struct for preserving across
>       napi calls. [Alexander Duyck]
>     - Post XDP program rx_buffer processing has been simplified.
>     - Rx buffer allocation pull out is reverted to avoid performance
>       issues for smaller ring sizes and now done when at least half of
>       the ring has been cleaned. With v1 there was ~75% drop for
>       XDP_PASS with the smallest ring size of 64 which is mitigated by
>       v2 [Alexander Duyck]
>     - Instead of retrying skb allocation on previous failure now the
>       packet is dropped. [Maciej]
>     - Simplified page offset adjustments by using xdp->frame_sz instead
>       of recalculating truesize. [Maciej]
>     - Change i40e_trace() to use xdp instead of skb [Maciej]
>     - Reserve tailroom for legacy-rx [Maciej]
>     - Centralize max frame size calculation
> 
> Tirthendu Sarkar (8):
>   i40e: consolidate maximum frame size calculation for vsi
>   i40e: change Rx buffer size for legacy-rx to support XDP multi-buffer
>   i40e: add pre-xdp page_count in rx_buffer
>   i40e: Change size to truesize when using i40e_rx_buffer_flip()
>   i40e: use frame_sz instead of recalculating truesize for building skb
>   i40e: introduce next_to_process to i40e_ring
>   i40e: add xdp_buff to i40e_ring struct
>   i40e: add support for XDP multi-buffer Rx
> 
>  drivers/net/ethernet/intel/i40e/i40e_main.c  |  75 ++--
>  drivers/net/ethernet/intel/i40e/i40e_trace.h |  20 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c  | 426 +++++++++++--------
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h  |  21 +-
>  4 files changed, 311 insertions(+), 231 deletions(-)
> 
> --
> 2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
