Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D82007CBD01
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 10:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A76B408B0;
	Tue, 17 Oct 2023 08:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A76B408B0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697529704;
	bh=p7Vd+MZYnV7uleELU8swdTSRIRGltLA3iEDmysFZszs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=pugReCxxdo2AoMMHE0/qWnR3AOFeUKavykWogGngwWFzNX9JtaJyPZx7CspzWVENF
	 ewlas6zA62sFK/0asgvzK3jzz21rETuZyfRuWgOwelfbhxZh/3/pzT2yk4YY5w6+iv
	 D8hJVZLOGoK4UvnKZ3iDr+EXcw6nroSVYAkXLDRhD1zCiAMxlP4DsAmIzAPB2UByDK
	 pPlcUf6Sg09iIH7MLiVuBsLO2wdqJ1KvqKZNYuV1JTGKnu32wYOXm4iE4qTztxUOFF
	 W5DUApZ5Egksg0iSpR+kbpZ1AC34QsvGw6w2HzARYm64yhwoEdonlxjeNY44h202r3
	 Ehwh5m7tDj5Ng==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3T9buCUR9-t7; Tue, 17 Oct 2023 08:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A628B4030A;
	Tue, 17 Oct 2023 08:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A628B4030A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E8BD41BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF1DC81E05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF1DC81E05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ste8STCTIwhV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 08:01:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EB6781E01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 08:01:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EB6781E01
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="449947278"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="449947278"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2023 01:01:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10865"; a="791154026"
X-IronPort-AV: E=Sophos;i="6.03,231,1694761200"; d="scan'208";a="791154026"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Oct 2023 01:01:34 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 01:01:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 17 Oct 2023 01:01:33 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 17 Oct 2023 01:01:33 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 17 Oct 2023 01:01:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYpyNnLoQz1pE6wZxD9dAcEcmIXXpb0MFrYzOGnWxBYMIVpPJvXMIzX5moRLOEJ/Q0rV1SNpb4T5Ax8xhG4AiCN8J6KfuzRjm9GhtIkajEeKSgD4DxzdRkGl/aZRpBNfRwzsJ4Q+ERIhnjwZ919q52ubDcMY86RTnfBREy//NNOxWki32BOuh9OkwdOxD8PK9aT50GuI4mi0rrHJP6eFxKKcT081QABp9TrNoMim3JOJwUK6OfvIfrABhVh+ArvSs9X2LnQekstcf9c+HZBlWOik3dcnMqeF7nhfrIgE16Fh145TMUU05vP7avyPpTnq4AWLIBvYfyiXdUQnZigIxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ehLEDQvysLvzn5MpzVN3k/gUDq4EEG3CXFrZjUfTTSM=;
 b=OBKcrWAA4neLPk7dgj6lhAB3QayPus7THun30RWmMwilw7lWJPsPauCVZssAXmIJ35gJd4eOaQ5LiNws+Dmra2Yxtx3SZlAizqV7qUOTJ5ftfyG6HqxpYSSaQg2p8AU8IfDZt/bcracJs7wrn7XWmf6zd4YRxaCY3Drb5L5RQu8CmmK71tTFZ+MPXfBW67FMnokp7NxJfOPt3ffJLEvvn9IHcpo4LKp7gmSK77LyLeoK0hcnlH719TGddtSxvvTiY2e6rj2QCGIcQFG4p0wR2Ol3iJahqUKbBt7UJrBptLGGJI9Z2dGkzV7RTLF28DCOnh8vFuHphNIL7vc5XnVMlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by DS0PR11MB8070.namprd11.prod.outlook.com (2603:10b6:8:12d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 08:01:31 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 08:01:30 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's
 own registered state
Thread-Index: AQHaAFDL+C6M4MQGpkW6JXtxmYAMJbBNnyUg
Date: Tue, 17 Oct 2023 08:01:30 +0000
Message-ID: <MW4PR11MB57767D448938D07B818D3DDBFDD6A@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231016164849.45691-1-mschmidt@redhat.com>
 <20231016164849.45691-2-mschmidt@redhat.com>
In-Reply-To: <20231016164849.45691-2-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|DS0PR11MB8070:EE_
x-ms-office365-filtering-correlation-id: b3f638c8-af26-4dfd-5d4f-08dbcee745f6
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Z9VASdQIPn3okTeAyhJJZ1fq8KGCu3YX7+pI6dVWcqHxWu1BglXiCbNwH9/8yb8uDef+PpKNiZyoDdo/X3z3paBP4bftiCSP+sZ2xeplLGdUGNKVRyFfyVUzomo/aF3V5dbQPCVCuNEr6mxIp0lp8N9lHTy5vFCfuJLAupDLQV1RuL77czeIIilJpG6gBgGuuhasnI8m7Jy5kF+FEL7HP1gStPbwcegtnsoLqTboj9+/FFNggWbFSgmZIQHNtszR48/j0x4kni8n3BjsDoEN7qNEn9a6S3nyOrVJPJcoB+chAFpRWk0dElhfghGamQxEvLJyWLn2qtt7ImAYVnHM3ofS3LzMyKK5w70fzUT5HW+qKHMUoV75KBS5UZQi9y97vW7nwuM+VPQKd04mroGKg+SGnQERVMrK2/F7v0Z+qfywur1tGe/2SRxWFl/FXCDQaxJMR1FJPLJHnl8CJH0QPf5SJybs6f/H0eaQazWGjdc4p7bDvONJYOnUOYc5GE/QkSxLgYrjxzsFD2nxfj+4imCpSLpMqq1Kiln2fRDJg7ye/GxIFod3yJ8Hs8qJ6ln3eGAZSoJ5NDMITaMZ3H8m+3zDuk1mMLsFXkOGTb1pxA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(366004)(376002)(136003)(346002)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(66556008)(66476007)(66946007)(76116006)(110136005)(66446008)(478600001)(966005)(71200400001)(54906003)(64756008)(26005)(53546011)(5660300002)(6506007)(107886003)(9686003)(33656002)(7696005)(316002)(8936002)(4326008)(2906002)(8676002)(52536014)(41300700001)(122000001)(38070700005)(86362001)(83380400001)(82960400001)(38100700002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?sUuWwbGIDpIe84dURZe7Bl0HNJ7fWDxYQWa631BWYiaoCncB2qi3Qs8WEJU9?=
 =?us-ascii?Q?+vZCPPLsUhs7ANMYS74iaCgVB3oGy6QgWbawyNAnoiTjvVwP0j6wEgo8zUtV?=
 =?us-ascii?Q?CwF6D9bm8YNEbILLB8Esyf+l9mAinxnVl3nrwZA7HbRXuo6LAWJCV//VX3Jv?=
 =?us-ascii?Q?6CPOeiwUIGt8kHE1UJlz1w1zjUe4gSjbSDqF7GLf0ag0akKUWpvGFHiUL5y2?=
 =?us-ascii?Q?qC5tc2ZR05e0nP/Zff6hpLyPsPe230pdt4vTEemlCPD8zPOVXvGb9yGku8RM?=
 =?us-ascii?Q?Pd9hSOvtYGM84kwRO4FNgoXnPRwgA64uN8NUYmMKJ9OOIBnMsZ6IKrcl+Au2?=
 =?us-ascii?Q?wACzyP+wch+xWqDLjtqTqcOOrcIcXvScJw/4wKGDsAwy3lumEhCv6TU60i05?=
 =?us-ascii?Q?Qye817PLBHR4WDcvCQB/fQzK00TlfkOFZ9xJGJMFgsIsahJb7RKmvY2GLAGb?=
 =?us-ascii?Q?k6jxqZtasNuc2FRdgevbg1Nmv0AvCgao8BNAk9itc/WulvEiBRALqn3Kwla0?=
 =?us-ascii?Q?vNzHOuNCx6IdVIHFDX9lQDFf4YKlr2Je0mdbKC05xO92LpgC/9qfu6CYIJWd?=
 =?us-ascii?Q?VgokI+NNrPzWtHfrBsop4K70o87+uAzVRBLX4CgCYxCGvd2ERkXJkZEjD9nt?=
 =?us-ascii?Q?dypHHhPrl16FMTDPGSfeQ8VkkdQeLmjJCSk53HAvpZVm7rhMS6UYvkVfP3kB?=
 =?us-ascii?Q?+pOVqMPcnt0PqrPSvTmW/BITPqu4bnt+Wg7j5SyXexOQvcUPIdDRfWo/SAph?=
 =?us-ascii?Q?O6vq/Vtm8rJ6La6b+oSz+/u5Gq+mssnpv9iZOITSoXdZzSp+cxbu/dprd9tB?=
 =?us-ascii?Q?g8Au1xS1X1sDyBVPVR2PtS9I+JoaBSAxEp+LhQIJLEHRMogs3hPBBVOKO81v?=
 =?us-ascii?Q?YI/7DDXTYwndYhexlsONi0hN4kDN8aDa/NwArS2PHlxOlxkhk4At9hb+EY80?=
 =?us-ascii?Q?QWR+gvnUCSvBaftbA5rMEfyTPmpKWZXJ8uAnfEtXjShzXFdnw2RvkXtfnkOg?=
 =?us-ascii?Q?RQgpyPKZ5KsuBeDQGylfZ2GmbhyLM35i3EKSgLJVR/EY5k+sHSi1oM3qg5Ub?=
 =?us-ascii?Q?2aEPyTXeRcz7cDxOf4nI2Dk0aoZPvewLPgvTyIJrSuI6zJU8pgWzjCY3BfUj?=
 =?us-ascii?Q?GVnI7/X2L4421+w/AXpkwz17wUbzscrAQv/+L0CoSzfSIS/K1FWlCyIz28D7?=
 =?us-ascii?Q?P1Mo7dPfiqulMiJ9mvS2a2SOrD7yoYXOjgkWEEbshw8BYNqzw6xMCOHg0mVt?=
 =?us-ascii?Q?T46YmdX895Df3blyKU8/9OqVp24Fjzk65JvJ7fvWrF0W6D7gNUxE/lcceOxR?=
 =?us-ascii?Q?MYh2YCN3eWXaEX522JLq8GF3yRKkusponTrasLD4REbKj0ajePnWbyuV1U/Y?=
 =?us-ascii?Q?RRD/nA9klH1lYsd9kMOTg5+hq+3hIL6n+RmTkW/2EU0tIsBT8Y55IR0wv4L4?=
 =?us-ascii?Q?PU8I55HheVzBbTrMjRhlkdLj8/cI48ndxMrNVrVYTeftSBC9eGxu+PKBpqW1?=
 =?us-ascii?Q?FP8ljHMgDGzXd+3rpG/ZtI4Inyc2uWinIOc+fKlSrMjBOP4t51BygoVOz0df?=
 =?us-ascii?Q?ZUidm2XO6jWsU6qNuRPWN2HWaJ/yViRB9HWzxHZp?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f638c8-af26-4dfd-5d4f-08dbcee745f6
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2023 08:01:30.9453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4SdnHxyrjyyRymPIDHQKs4N/Q7dBSRC6MjeKYal4/wMmE1n0N8wdbu/vaPg0JSpLTEBKis8WudhB7FFhHxbPHjbC1+tY/guswQsWA+2NvmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8070
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697529695; x=1729065695;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vbbF3wrjBKTkrghbM8eKL1QbUYPeV97pZcvJGMDNshc=;
 b=LLD27eX4c+yChcB7khuYTvZI/iThVBhgr7xT7G1CObiQ67R/movcbNME
 t4VJ5Cb73ZYYsXDMczuYWlwWzF/5MJC6CF00OoVc3FOPg0IWbE5aIICUS
 TwPaNrAosf5dq7jitlRiw+u65jVMM6Hnl4T6Fc3cO89inijEUKBB4g2d+
 danVpRXTjX6zVASN7UVE0fUbz58cB9eOcJ5+nCRGFDjYTQsmAyH5mFYiw
 RNDEFEHnqmLN3HGYHisjNjKdqDHrIjKoXgzr1od6EoilyucjBX3E2fJHo
 TF2KXrWwB5WRvWH6WBfp+1/uJQEhGDZZ0PabPbM/rfTphyOoKCs9XWVnX
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LLD27eX4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's
 own registered state
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Monday, October 16, 2023 6:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 1/4] iavf: rely on netdev's own
> registered state
> 
> The information whether a netdev has been registered is already present
> in the netdev itself. There's no need for a driver flag with the same
> meaning.
> 
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Thanks Michal, nice cleanup!
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf.h      | 1 -
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 9 +++------
>  2 files changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 44daf335e8c5..f026d0670338 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -377,7 +377,6 @@ struct iavf_adapter {
>  	unsigned long crit_section;
> 
>  	struct delayed_work watchdog_task;
> -	bool netdev_registered;
>  	bool link_up;
>  	enum virtchnl_link_speed link_speed;
>  	/* This is only populated if the VIRTCHNL_VF_CAP_ADV_LINK_SPEED
> is set
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index f35d74566faa..d2f4648a6156 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2021,7 +2021,7 @@ static void iavf_finish_config(struct work_struct
> *work)
>  	mutex_lock(&adapter->crit_lock);
> 
>  	if ((adapter->flags & IAVF_FLAG_SETUP_NETDEV_FEATURES) &&
> -	    adapter->netdev_registered &&
> +	    adapter->netdev->reg_state == NETREG_REGISTERED &&
>  	    !test_bit(__IAVF_IN_REMOVE_TASK, &adapter->crit_section)) {
>  		netdev_update_features(adapter->netdev);
>  		adapter->flags &= ~IAVF_FLAG_SETUP_NETDEV_FEATURES;
> @@ -2029,7 +2029,7 @@ static void iavf_finish_config(struct work_struct
> *work)
> 
>  	switch (adapter->state) {
>  	case __IAVF_DOWN:
> -		if (!adapter->netdev_registered) {
> +		if (adapter->netdev->reg_state != NETREG_REGISTERED) {
>  			err = register_netdevice(adapter->netdev);
>  			if (err) {
>  				dev_err(&adapter->pdev->dev, "Unable to
> register netdev (%d)\n",
> @@ -2043,7 +2043,6 @@ static void iavf_finish_config(struct work_struct
> *work)
> 
> __IAVF_INIT_CONFIG_ADAPTER);
>  				goto out;
>  			}
> -			adapter->netdev_registered = true;
>  		}
> 
>  		/* Set the real number of queues when reset occurs while
> @@ -5173,10 +5172,8 @@ static void iavf_remove(struct pci_dev *pdev)
>  	cancel_work_sync(&adapter->finish_config);
> 
>  	rtnl_lock();
> -	if (adapter->netdev_registered) {
> +	if (netdev->reg_state == NETREG_REGISTERED)
>  		unregister_netdevice(netdev);
> -		adapter->netdev_registered = false;
> -	}
>  	rtnl_unlock();
> 
>  	if (CLIENT_ALLOWED(adapter)) {
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
