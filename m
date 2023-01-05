Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B74165E543
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Jan 2023 06:52:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 85F70820B2;
	Thu,  5 Jan 2023 05:52:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85F70820B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672897946;
	bh=6JCCiBzWOO6/NxxdQGTD+99UvcIRyghaeRof5y0dBNI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gMvGayvxkncxAO6RSkCAZ47LsWOArC4HsFSbgIohST2PgQqMFDdvdfCFz5C8yW4ob
	 zTvi++jN8AQTRQ38VFkMFLOCPHM0H6sejS4fNHmNfUxmE7BgO2TiNkBlL85DtCf/UD
	 iaYSd22YeCz0QBSY5cTcz20Y3MRAWEy+uHSf9E9Zt8oV8UNfflcPmsc+Y3u2pkuOxA
	 luco63jelSieuxUAERvUX/8yftPyEE3kKz+8+j2QBd930e5625PUPSEFdgAXWu9OiJ
	 dvjyflrhe4qrQUqCyH4dKoMUw0X+DPKLKB7OEskH+OBWNPgV5MEy4HIFEqAABskJn7
	 B+VOay5hmAxnA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CNbv4snxb6B9; Thu,  5 Jan 2023 05:52:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B7348206F;
	Thu,  5 Jan 2023 05:52:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7B7348206F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 721D11BF379
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:52:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 485BD404D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:52:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 485BD404D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jg3zHwVMqbzo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Jan 2023 05:52:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 74FD140017
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 74FD140017
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Jan 2023 05:52:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="320830664"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="320830664"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 21:52:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="605417991"
X-IronPort-AV: E=Sophos;i="5.96,302,1665471600"; d="scan'208";a="605417991"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 21:52:17 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 21:52:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 21:52:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 21:52:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 21:52:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RdDbEW2yUnDqo1TpbNJC7G4p/fIyB34tX0j/5AQugb+wWXLN0EGALnKCAEiULBsD3a6tTUUG6WY2SG5Ok7gxU92rKUIcmxQeKw2tlPz0JwAc3GgkL3z16pnGsl7ffdBqW7Ls6v/tZXSyUc2IMlcvjtvdBYHGSY0Z6f2dcKEB3SgaCNI8yfjztd3Qup5KvfeaHJObYnDFkLsgJNDvBsRfhYrjarMNF/iKwLK1bBLGw7X0LzXYlH72xGtC2s22ZTYJtm5oGC1yLv8HMltYa9Ly7DElOXaksiXRbfPC7KV/4OyUJw5Rm36dVmgP1fmevYZw/6oDjzVr/qzY3tbusc5Bjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Np8akPw4A6p3YbzkTDJC1/+8MOGpb5coDW36Q0T7nPs=;
 b=GbQivSAJtTEKpJK1xp0YH1MxtaNmVAYI0D5jb8nrugd67eWzdfStU/Z1TWeXLmv3rpaWAlawZn/P35vqkww3N3iGVfYAMUhIGTQ5jfcOVwCc8z1bMWALzkSk13p7JK6Vzt8IcIPeNxG8GqQjZ0Jpe4JKWQI4k6R4voGShWCZtcP5lrbdj4oeTrq0sOfcHHPGQwVqpZWI9uUkehmsd82ctiJpB7fzqqX4oJQj8Yr2+ccg/3eM/ULnXoh3lOobcNHHTDr0K80XjTRU3aVM4LayGGufpom9fkEVp9wx8uBmCpUaL6nRldrozVMaGRCMlJgj2Ektlf4incZuY+3kfL5vdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Thu, 5 Jan
 2023 05:52:14 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.5944.019; Thu, 5 Jan 2023
 05:52:14 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Jiasheng Jiang <jiasheng@iscas.ac.cn>, "jiri@resnulli.us"
 <jiri@resnulli.us>
Thread-Topic: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
Thread-Index: AQHZCwn9v0rjK++f206vYyno195yEa6PfYUg
Date: Thu, 5 Jan 2023 05:52:13 +0000
Message-ID: <BYAPR11MB3367038BA3776DF1C17D1B97FCFA9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221208133552.21915-1-jiasheng@iscas.ac.cn>
In-Reply-To: <20221208133552.21915-1-jiasheng@iscas.ac.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|DS7PR11MB6197:EE_
x-ms-office365-filtering-correlation-id: b23d99ba-9356-48ea-5dc5-08daeee0feb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WajosZH0PNZM7UvT5+fXoEhka1i8p0isOgtkeTM+RGA6M231b4fOxNYxqeApf+P3GFU+llSqvN4EuA8ju6jBZa7yGtWB1AbTUyrCD90MBFyO0dHkd9+WY7rZMZkqCM6wUk6dOwLaOjHa14vgdcgLuo2uVEse6lrXto0B5lveysnZmNjAmf4tqYn7XQdmuROT2qM8ViGXUAFn2RcM8Jb0DogIfTZskIKZEbS/S0sHWE7jRHQyCxcND62tM8vERRb/P45cxhVPjzQMRjiYk0Bviy2V8NFBkRcDSmQTeGFAbfjQsvBDmHgrJJF2R4iUuCpzKidQ0pulhH9hPp0DjNEGqGWEVL66S98joQEbtCX0eH9/9CRYJ6HKKg0GWiciJJuFMtX3tUEBQKaql+rPybmHL1EvYvx1OeoyVUtCfwh5TD5QsjgpeFV1ECuEjL5I/hplUPqEJmKtxurBUuUWvpNvecPaUdprBoUz1NprckYiDsVT8ZaxZWu7sYRUvrzCAW3N7SPUJn9sQfRgsycGcVutbgzJcHTXd3KDmfARF60DcwXZA2EtuN3TVAjOpXwsQVP+CoozsInn9rf+1rjnalngw7D3ZGcA3KWoKvimnnXvfFjAcHXuLwOy8hbdzOtnOU4c7uoCws707gQ7vmmpGPaHKfnjmP/xehBEBxHG0NjQdW3zEyGVab8pnvKF8ws8jxxKbevMfOv3mj3weFhbwAuQ3g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(376002)(136003)(346002)(451199015)(41300700001)(8936002)(4326008)(66946007)(5660300002)(8676002)(76116006)(7416002)(54906003)(110136005)(316002)(2906002)(52536014)(53546011)(66556008)(7696005)(6506007)(71200400001)(55236004)(66446008)(66476007)(64756008)(478600001)(86362001)(55016003)(26005)(9686003)(83380400001)(186003)(122000001)(38100700002)(82960400001)(38070700005)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3GKaj7n2WUHqGQH00REZ5d4zUl8gQiUvAbJZv3ool3wWVbjf2EUPiBEQ1WOr?=
 =?us-ascii?Q?XNSfHU+tuIB1MiPmktu7MRwL/siDUwHMN5RBJYubnaPubAxaJgxKIYl2LG1O?=
 =?us-ascii?Q?0K3otVO9WPBUj+pFn0+73i5jBV8ih1GAU1oP+an5MP7CVOQK/kNmINVmR1WI?=
 =?us-ascii?Q?IzervQfEDrrJORp7lzbNmjb5zLZ3PixkB/SXD1AV9gEATLXCXxOyGfStf72o?=
 =?us-ascii?Q?YCk3C91AnrjibPBjdwCH0s5ZcLQb0LpTmBh4v98oHlZwijKRlHE+FvIjIqm/?=
 =?us-ascii?Q?mORywcWIUeTDUkmsPaAnlean+b8xYye5eHvrLXcfq8Svbc7JwoWnW15KCP26?=
 =?us-ascii?Q?ljMnjek2/4A616CVvzDhqSROKsxUQTV+fX9YWtCmhmuvxKk7OFJ4guR6kFo3?=
 =?us-ascii?Q?AW/wzM/c97vt/Lri060aB+22ffyjPENu+nAFKd+G+0+AquWOBXzjveU1UbzB?=
 =?us-ascii?Q?hmAbwiEO3rvyq2zPRy6udtF9MqwA2u8CIMyNk+4wJDsZBfjo3zIJ+W4Uhopq?=
 =?us-ascii?Q?XgiL/BPdMgHr3Q+RSA5OYg96IdJ5FVoi+9Flsaqkk7gAbBVdzUqiqgo6Mk98?=
 =?us-ascii?Q?aw9eFT8uyvPG+IhJic0YXNjAe4IgpQzdZ3JvnLidawLNlrX+WjBzOTGkUIdG?=
 =?us-ascii?Q?7EOAHg3xhzDGiRUYH6971/pRnGHffb7JJrTrNTvNR3wNL0GxUUYZBAAmz8Ht?=
 =?us-ascii?Q?JCkkMJ271yOpfaipakTw1F9hKfWpFVQbbU9CWL1SzKsQFb6iFzO+F6h+haOF?=
 =?us-ascii?Q?1fEZOXqMper6wj48YnIh28frrwGLSCLJGGduAs1fq4G7PSePUY1UF5GCiYtA?=
 =?us-ascii?Q?cs1Ioy9fhcMzPIVO+9Hi/Yc7tSf9QK/R5GTQJIJnajoOgrOVEaoxeg4SgLMR?=
 =?us-ascii?Q?gCrf67B58RoWoN5o5esGbPriUoYHl9dlCw/Hz2les7bgPL2omzy1QPcPAmi8?=
 =?us-ascii?Q?JojAV+OTE2T66I0ih06bU7a3B474eZ4IkOdHUwoQa4umlF7s0nA2GLJ+eWHH?=
 =?us-ascii?Q?1J10To5jiRUrZvBMoY3RGInxd90syJgsMDY33Qv6ig6UGjgxANhL8zBYGYPw?=
 =?us-ascii?Q?bRnVTmaY2zJRKzx1gFVIxy/9f1ucHOgQ7f9VF7HfAW/5aKbZYKoaphJ3ngre?=
 =?us-ascii?Q?gLB8ad7hbqrVbWAv3Gmob5ftrEPa+LLnLrH4ZQSB4+r+Op0bTsYmoNxPiod0?=
 =?us-ascii?Q?M4Vjzqg7GxVP9QPaKkfY1MVD8n+SOXE2xzomtur54HOWtZ1/Wt6wBEfMtkTP?=
 =?us-ascii?Q?1bT4SsXJeNDUb1SDYVRVzZKfhe0Lmz1/CiodaRsAGECqqYcPQBrZQBl5YCyF?=
 =?us-ascii?Q?duk6TXadUJercvh/Aul+jMERqISWPuykpX5tuQ6O/wwIsO/GjQuhJK71w2Dt?=
 =?us-ascii?Q?h3ec41iaR/CACSfmbpF8cIIN+uXbMf8m1azLVyZHmsHjghpYvMXyOPsK1RWx?=
 =?us-ascii?Q?UNwYs3pSdg9DmwPXduUGTUnL8nNdXRqrnQsQyUer5nj0V21CBN4yl0R2vOlL?=
 =?us-ascii?Q?58arP8G0LpJlZ+M2qrcytWhZECj5qv8gTHWAW0ChcZPuVltgk9NhQU3AcWPb?=
 =?us-ascii?Q?EIrwLzXswTyen+E9dKUewEJ+rbFGJbzgzybVybO+?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b23d99ba-9356-48ea-5dc5-08daeee0feb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2023 05:52:13.9770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ayndtA8It02B2uqE3ZA9YhDD/ICSyKqfn3Mxs86PypJQKYknaedQH26FvsMPKH630+hck8MJbqUwcT0Qx4xA9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672897939; x=1704433939;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w3ghNSN6Qry5E1NbPDSDBDBM+g78Y1P6N4pNSduy/9g=;
 b=PoSSVaptgq1BlS09F8uispZGD5Qx2a7GwErYAyByGV0CAx3vOF7hRihn
 FfkcU+awqq1h+l1TV8EmkqWJM7+q293IrXBmO8/YvjyrxhRJ0CIl/CtGg
 ex5jF7S0NfGwCF434GUYBFGxkl4piQudcNf+/c4JW5F3NSv1Of8KI0wJ7
 txodslefGFMO2XMmM5EZwTOTDZMARe0LWv5RYpo+KXcbPyWMn4RQy2cnJ
 RRAh8xcfjB9hZMkRDAh7czV0+JLZ0JV8TvyIKhU3cKU9AAyumetG5I8j7
 w/V/dcjvbX/s1gG9iNOjthFC0UqOkWsutxZDDSNvqp7SUMNhIVwMCZ3C0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PoSSVapt
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
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
Cc: "leon@kernel.org" <leon@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jiasheng Jiang
> Sent: Thursday, December 8, 2022 7:06 PM
> To: jiri@resnulli.us
> Cc: leon@kernel.org; intel-wired-lan@lists.osuosl.org; Jiasheng Jiang
> <jiasheng@iscas.ac.cn>; Brandeburg, Jesse <jesse.brandeburg@intel.com>;
> linux-kernel@vger.kernel.org; edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> pabeni@redhat.com; davem@davemloft.net
> Subject: [Intel-wired-lan] [PATCH net v4] ice: Add check for kzalloc
> 
> Add the check for the return value of kzalloc in order to avoid NULL pointer
> dereference.
> Moreover, use the goto-label to share the clean code.
> 
> Fixes: d6b98c8d242a ("ice: add write functionality for GNSS TTY")
> Signed-off-by: Jiasheng Jiang <jiasheng@iscas.ac.cn>
> ---
> Changelog:
> 
> v3 -> v4:
> 
> 1. Move the check right after the kzalloc.
> 
> v2 -> v3:
> 
> 1. Use "while (i--)" to simplify the code.
> 
> v1 -> v2:
> 
> 1. Use goto-label to share the clean code.
> ---
>  drivers/net/ethernet/intel/ice/ice_gnss.c | 23 ++++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
