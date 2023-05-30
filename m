Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E4C717120
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 00:58:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B904281B9D;
	Tue, 30 May 2023 22:58:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B904281B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685487537;
	bh=b2Mdc4MIK/xWKy9y8LCCmTxCr2y4ZnO2ZEu94lQWJpE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CCdL61PgtQY4QGdML7LCZGnI1UmrNBy866T/CZ8hAp6dCrEoJ29pkglDzfQ6HijiR
	 A3/d1L17QyNvWOFiDX5lgEZdKAFEBIXX+KrctYTvaZMEOOAdKIw4xjR6Dt/J0+hhrg
	 xKYRce1pmVx6pKiXIvcVZpcZeIMVPSDLnsJbRlo6FD82GIz+hO2MwioDlzmnjka9Gp
	 zK8K/GDAxGbPOuQARhKmPMXbtAP2MTQLhmruooiZlhCsDemIWm8XK3uG2GxEa+LslB
	 zWNFyrLB5bQrmXR7G0MB9J2Wx4p+jijwNksq7B/Su63NVMkAI2aGFBeanFN5tZhSOj
	 Zf9b+tGzQNDPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8B1e-2lU5xV2; Tue, 30 May 2023 22:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 72B0881970;
	Tue, 30 May 2023 22:58:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72B0881970
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 23F311BF35C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 088A781767
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:58:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 088A781767
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 47gBAqLgdUm2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 May 2023 22:58:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34A6E81749
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 34A6E81749
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 May 2023 22:58:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="344573069"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="344573069"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 15:58:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="776528385"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="776528385"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 30 May 2023 15:58:48 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 15:58:48 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 15:58:48 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 15:58:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxUZrR+hPFBvbewTz0kO/mBN7R0Oyfh9NTU4ilCdV1vaPjZkXJDWqq7rE2bk05eSafCJSWALchUCjEGZkxmXV7Nrn6L0tojQ1/dZBqRDKJ+1IECkA/0sQ+w20Pf3qwazPd/klRHrHn6BhdJRHDF+KtoPBBngRFHoAucvRXbiWFJnS0xMP8cpd8+OELIV9Bu48i4OPO8LMxVK0KgR7E7BxkCUo6yR0cdgK9/g/5blAkCBTIL2vfn2E8LhkGotmbFo2NsHjsBLG/rPdve0oOsn6aB97ZbBzuf9kyqC+z7hLyTBT03LtFAF6lAgxDk+/t8VoG+83BDWdNC76IhpMcghLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a2xa4dtGD27PHiY6q2+ixZeBbMap5PYhhktsHig1Oig=;
 b=WY09FwUxnHNjJg1k/qgMgeUx9Igg/xbv8HT3/ZP4BVtfaTbnALwaG2VW+unL8OgrsOzoRfdQ4nw6wUggHaOjIb4Yo5wWi+n2Yc+Mt26sPeudaYftctIJihbceI/T5q4jT2KtaDr8uQF7T7TKpox04EYp1fhYYkNecJxk9L0pPrKm6BFJL23tSHiOUNMcUvEOsZqrszyna/Tb8nJTpcNtsGSOABqLxSB0CVfvgkjOavKFjLOdXdxf1HHy/+YFLwO64kZXMcs+ZYXH51p83l1ENqQ0fwRXMiwJKFrb1QocWPZlznEDvwEsiYxt8UAtJmqgqOEq/EY2a1cexhV5t6D2qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by PH7PR11MB6649.namprd11.prod.outlook.com (2603:10b6:510:1a7::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.22; Tue, 30 May
 2023 22:58:45 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::d06:5841:d0e0:68b8%4]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 22:58:45 +0000
From: "Singh, Krishneil K" <krishneil.k.singh@intel.com>
To: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v6 09/15] idpf: initialize
 interrupts and enable vport
Thread-Index: AQHZjQ1mS8VNnW1rgke3An+HDsTNT69zekMw
Date: Tue, 30 May 2023 22:58:45 +0000
Message-ID: <MW4PR11MB59112B8AE593572DB206F07BBA4B9@MW4PR11MB5911.namprd11.prod.outlook.com>
References: <20230523002252.26124-1-pavan.kumar.linga@intel.com>
 <20230523002252.26124-10-pavan.kumar.linga@intel.com>
In-Reply-To: <20230523002252.26124-10-pavan.kumar.linga@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5911:EE_|PH7PR11MB6649:EE_
x-ms-office365-filtering-correlation-id: 30dc0f6b-e088-4559-1e8e-08db61616c35
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MRFw9XriJZ2k6AiE0zOvr8XUh8r/S6jYrCK3PobbgUVXUWHKSdv2ndioU6uUAgQbINwCTevscrqtOrvjKYlKyhymgyIMx9iaAIRC9fz4ylA6o+1RNitllrodwae55nnhZ7gVxj9OFUkvzR7W7LnnYGZhzDavP98L6YhuhA8LijTtasqC5WHVF5QrMSXNqbRDK0QQmjD1B+7cgMuyd8ycTm2i4ofedL5mf0+1bjVURVqGqCASxLw4z6QPlIhnLEQspmsx+EqaRd8srkVzCjwYHaQYKh/oHYmTIiSwZyy9bNhDfezWF7blSh1hhrTH/CL1oarT8HlYJZSTejupK/qlY37ssRcTuy0lFtPBL4YWyn4Cz76aU44IExK8tZCVbhK0AW0CJqtgxTjZ6t3oSI8ciynCB0Zia/cmbNe257ViIAh+lAHbLCOpScvVxfRV8jKDS5UHVJ3zlE0H+rCCvh5cmJazyK3fU+eKdK1TSrd/4YxbVVblkuPCw/1NVCHrA08iwbPZiR6hVyw6VAkm4H1GjAHnKSy4B04Mu+wLWNi+ScWaHWduhF4hq7s5VEeKvI5sHjgAh58VrigqU4RpRW2iaCPIZ65qArim9GGCPUR6bh4UnbsC2ShMATVPk2zPo37U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(396003)(346002)(136003)(451199021)(7696005)(86362001)(41300700001)(38070700005)(4326008)(55016003)(71200400001)(316002)(33656002)(76116006)(66476007)(66556008)(66446008)(64756008)(7416002)(66946007)(5660300002)(52536014)(186003)(2906002)(53546011)(9686003)(6506007)(26005)(83380400001)(38100700002)(54906003)(478600001)(8676002)(8936002)(110136005)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5v4HuEdEnxnCkFcYCOazBlWf4v30HtZ2/PrJynFdHmVtKvlDJEPHvbgd7ax4?=
 =?us-ascii?Q?szdHwyZxqYagZlYfHXHAYWqGUYbFZDVe6deeQTkTCDVfNtCMH3LA4+hYEuyC?=
 =?us-ascii?Q?DIkCHsDWg5nMJobZkvenECGZkJ0q0I9m1Llw0svnOO7avmxhDWoj4tK+CX5k?=
 =?us-ascii?Q?Wh65T61xd4E0+2itOhaMJ79zkKG/Bql2cG80eYoK+xPtfvYBNq9xQGJRzo7O?=
 =?us-ascii?Q?MvpAmjq21C8OHQ01N01tpSTuSGT/covrQ6K8YZ3M4J2hcCPjtvlkGDXYgtUZ?=
 =?us-ascii?Q?cEgWv0VrK4Q47BcjL5zFvS9FfEl7UjHJ8rNbIcPE5Qj5eKdyv1/KJUQbVXoy?=
 =?us-ascii?Q?2kk7dt61rMe4ymJMTCSulLaAG3aDsiBG75R5zjsqgomCv3sqC5dGPRCtpX7L?=
 =?us-ascii?Q?WAgJ3TaLWOoRRAnhxpdywFjF+isPUZA2nNwd4hXWhdlqvarqXl3ZLmdsyUTo?=
 =?us-ascii?Q?FdSlxLlFEGPGuQ+Mwr5KbQ3awstBvbyjwvFx/ScDLtPZgaXX3kzFBeX2zsQx?=
 =?us-ascii?Q?oAUALTsPjgPXc0cINJYB7zA75JV1L7rBAtrRdypN3O0oXxQuqQx0uYq1RoyU?=
 =?us-ascii?Q?i8CGNsvUJyJeb+Tw7auSyUD3B3BJ2JSMFqV7iq2WXw46mdvDd2Zg+L+yzrVv?=
 =?us-ascii?Q?5mq24CNsqsSgk0XsYGGMy+qfLtKP133QTDfXmCyrgidK8bIg/ld+45nTv67+?=
 =?us-ascii?Q?92GXDw4ekkK/+WXDmCBiwhpiTVnjR2Q3aomBqIjjwkAolTwBsbE4Y5SF0L6z?=
 =?us-ascii?Q?FBI0grtyNaL2dokCea5hxwV3MZc+ZRBe+1yq7p3JD0y/n5n8cKdMuwjOSLES?=
 =?us-ascii?Q?03Vza6BwpKiogZP3Wjs+FjQhwRalQLghkkRGLPTCnYp3nLrtOYiH9IXaagZ+?=
 =?us-ascii?Q?hdZ3EfqlXP1w3t5TX/kZ8oPxoY3uJppnFw3vmPtl2fUNpkDTaKkl3Y0UPitg?=
 =?us-ascii?Q?JopsNhzPel1kYTCeGx6+b8wANt2L+4AizNjKKTSlAx/27IuAIFSFBAOxddo4?=
 =?us-ascii?Q?jYVDK8WY0WitX/co9QopR8KryyFmFS0gac51EWuo6p2lDLSE5mqMXtxiOAxi?=
 =?us-ascii?Q?qC2dtmCHkpbSWZS+9hGEzPsDz5M3MHTngUKMpwTWr3Gghim9j+KTSsesujMn?=
 =?us-ascii?Q?NXGj5Dd/r5Jxk007W+rHMP7yZ7jGQO7CwxRIMamAp4xQuZ92+4se6W9645l4?=
 =?us-ascii?Q?wp32yBI8vof9s7RCEmXXvb9dZK3KI2aJpKL8SAdiJcRJY0sPck6AAcr8ttcn?=
 =?us-ascii?Q?7kIn0LqCHbYZiWdaDzhYfy6tgg4n9UFr54JTdz6DzRycPuhuRTYs/oVmGTw9?=
 =?us-ascii?Q?vqkSIMt1mCcUTCHy/T02jBomauTf/l7D/f7sYqXQLULKu9FXVycIF0GOCZ8h?=
 =?us-ascii?Q?XgeSnhYx2EF1slREdMxrQvwLV42wNmTt9/uwOK9oOxa5PUTRwdLvceQXT01O?=
 =?us-ascii?Q?fl04UsCzEFspSXGo5ky4DJPu0M+OtX5eqIS41LbxmHmRydRkEi/ytRCxCSUv?=
 =?us-ascii?Q?E5hg1LdbDeJ1e9/MCJG1XAFSRWf8kgWeBQkAjR8c1sd5BdSK0YRUETxQV1BT?=
 =?us-ascii?Q?dLyaiikxzbtNEmFVhRp8txZ0LGoFa0urT1N52aS2vJ1Q48Fm2+fTOm2ANNXH?=
 =?us-ascii?Q?oQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30dc0f6b-e088-4559-1e8e-08db61616c35
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 22:58:45.7895 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c4VVps378M5hTH5Jqtr6E3bQ2hr/UWeFYsMECXSxa12sqej3kM+l3JEfIpajplmBmwijjoJzpQge/SJPr84hIrmYzgzokniY5SusQZLAsvQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6649
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685487531; x=1717023531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EMp4tvDBp6F+htN6ic4r6H9cddY8zKhcsZTXqa853c0=;
 b=BRR2bAwPle3qcap35ysa+/tS+O5CDxER9RE3bUEWcv4WHea1a5h9WMwt
 Kzi6E+udm3X4J+udaWt1hvB7dQOIIIgzvB9ubODpfq6Ft+LK+fgfTMJHL
 AcEqJeMOK57oLR4474SDVR5i/A8gmVS5Ad6ZZEmR82L7j0Pl6lAPqcykn
 G/kVw73sfSa/WG+uJebkdkA1GTzerg+b0tqMU87xdnAsEVysduZps1Vfq
 QwTS5XlHAUEDiJL1Zvf/STChQlCArx1EruBdjDAqMJTVrWRKnhwfbiqSJ
 y7liz1bKwXInaEdjPMSOtue80rVnFHDkgfQdZKerMaxWXssGGimstSxWW
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BRR2bAwP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v6 09/15] idpf: initialize
 interrupts and enable vport
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>, "leon@kernel.org" <leon@kernel.org>,
 "mst@redhat.com" <mst@redhat.com>,
 "simon.horman@corigine.com" <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "stephen@networkplumber.org" <stephen@networkplumber.org>,
 "edumazet@google.com" <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Burra, Phani
 R" <phani.r.burra@intel.com>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "shannon.nelson@amd.com" <shannon.nelson@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Pavan Kumar Linga
> Sent: Monday, May 22, 2023 5:23 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: willemb@google.com; pabeni@redhat.com; leon@kernel.org;
> mst@redhat.com; simon.horman@corigine.com; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; stephen@networkplumber.org;
> edumazet@google.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; netdev@vger.kernel.org; kuba@kernel.org;
> Burra, Phani R <phani.r.burra@intel.com>; decot@google.com;
> davem@davemloft.net; shannon.nelson@amd.com
> Subject: [Intel-wired-lan] [PATCH iwl-next v6 09/15] idpf: initialize interrupts
> and enable vport
> 
> To further continue 'vport open', initialize all the resources
> required for the interrupts. To start with, initialize the
> queue vector indices with the ones received from the device
> Control Plane. Now that all the TX and RX queues are initialized,
> map the RX descriptor and buffer queues as well as TX completion
> queues to the allocated vectors. Initialize and enable the napi
> handler for the napi polling. Finally, request the IRQs for the
> interrupt vectors from the stack and setup the interrupt handler.
> 
> Once the interrupt init is done, send 'map queue vector', 'enable
> queues' and 'enable vport' virtchnl messages to the CP to complete
> the 'vport open' flow.
> 
> Co-developed-by: Alan Brady <alan.brady@intel.com>
> Signed-off-by: Alan Brady <alan.brady@intel.com>
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Co-developed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> Co-developed-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf.h        |  37 ++
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |  59 ++
>  .../ethernet/intel/idpf/idpf_lan_pf_regs.h    |  11 +
>  .../ethernet/intel/idpf/idpf_lan_vf_regs.h    |  25 +
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    | 295 +++++++++-
>  .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  11 +
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 366 +++++++++++-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |  21 +
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |  58 ++
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 521 ++++++++++++++++++
>  10 files changed, 1401 insertions(+), 3 deletions(-)
> 

Tested-by: Krishneil Singh  <krishneil.k.singh@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
