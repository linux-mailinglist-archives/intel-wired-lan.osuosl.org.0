Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252D623447
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Nov 2022 21:12:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0FC281418;
	Wed,  9 Nov 2022 20:12:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0FC281418
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668024729;
	bh=u0hHiImSMxGEMj6B8oeWIhfOLisAUp6BvbPL0d1s8y4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aGniBwN4hdbEyNRXJVEb5EfhJjAHxKgBwqVUh1ZYD9I1u7WZnfV/xlGp9LSVS957d
	 WNM0D22GID5BdBPQQpZnvV4/h6PTCMoaJLdJ3pjRuG5yQEp7Pm8qtWmQwcX7a9Ue1I
	 3qQ47HcMRuBSF1B5AVUKsZXgfwxE3eLF59tHbldAyucf7MuKSGZHTBhSlWqt22mcnj
	 F87VRF0Y7jgF8zggy+jWhT8d4kAl0ybFyHa170bEXCKCBoj4tt7PVNyLIw6qZFLiJs
	 Vu4lLj/zLyneFISx9cuWAhicr0IGrNaqPeEVuVd48aqmhUqEwy0sehC8m7r8WKnhe4
	 uzVaxFr4IVdWg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnS4Wu-UH4Xj; Wed,  9 Nov 2022 20:12:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A12FC813F7;
	Wed,  9 Nov 2022 20:12:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A12FC813F7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 631EB1BF4D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:12:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 49C3F4031E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:12:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49C3F4031E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S6JeVXfH3btE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Nov 2022 20:12:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ACCA54026F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ACCA54026F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Nov 2022 20:12:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312892982"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312892982"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 12:12:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="811768118"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="811768118"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 09 Nov 2022 12:12:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 12:11:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 12:11:59 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 12:11:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PI7uAWi0N5H6W5wuChXsQQVIlaqJgGzc5gShpVdxGbMfbohQnAfUD4S4wzDYqq5H3+ZJ848qA/t+UfKtDOOeLiIFs4wOvAcWUsqNd3I4qo67z768xPF+d1Hm/tJx4jmxhHkBStOM8VQvMVmvA5iKZ+qROM81I6jOYQTZdYC1sRal7us0up64gO232LBR3a1TNEkqASAEO6w0BmUzZJZQaiQzY8MBGSgCWFV/Cu/zlS69wgdw2Cq9D4YmxzEQzSO2y3qIWieuXXn04K+dF7I8VDxZyDS4h9zVK08zKt6X6jRoPUB+niXMt5Ds0xrzBBatLtk8eo9n6pI4g60KLp7CBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nPyxgkqIyCyVa+/q2W0kyqJfcLpfTM2Ih0N44JCfbVQ=;
 b=EHuN5oXyUMTyqcfMEBvNpkVJ5HiYMg0GhcS8rnAxuEtnKQiewr0A1VQNx+Qwv5aIclET19B1yOQf+JebCXwCgMIusqraN19MLaixrIHVpt46lNMBhUD6cRDiLND7tFhF3hdDjhSE/lYlbyE6YB45Oe8Q0bSPHiN7jCWmlpPATUrVSvlYJgMI0AAw+aU/V3g6wq0E3PJtbeAFt6pEd4EFQQIHPuhhenv3pUgyfNEzw1X6yHEAc+QEEnMURpUELITdQDjfcDaw+u2/1EBHF7hl92GGCYrhG8b7KN28VNwNiuhViRWpSsi9/M31Hk7nEHNVw8iBwrZmHpmTJJOyhITcuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY5PR11MB6162.namprd11.prod.outlook.com (2603:10b6:930:29::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.12; Wed, 9 Nov
 2022 20:11:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9e54:f368:48d1:7a28%3]) with mapi id 15.20.5791.027; Wed, 9 Nov 2022
 20:11:55 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Leon Romanovsky <leon@kernel.org>, ivecera <ivecera@redhat.com>
Thread-Topic: [PATCH net] iavf: Do not restart Tx queues after reset task
 failure
Thread-Index: AQHY81xt1U/+TsWFeEauMLnzqEhDea426S2AgAAeHmA=
Date: Wed, 9 Nov 2022 20:11:55 +0000
Message-ID: <CO1PR11MB508996B0D00B5FE6187AF085D63E9@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20221108102502.2147389-1-ivecera@redhat.com>
 <Y2vvbwkvAIOdtZaA@unreal>
In-Reply-To: <Y2vvbwkvAIOdtZaA@unreal>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|CY5PR11MB6162:EE_
x-ms-office365-filtering-correlation-id: 50dd5b19-9b41-41ad-f98e-08dac28ea648
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GWzCvd3lv6GJNlh39SqFPIl9UTGUPtayoUzA0KUM/90O9qlP4mGO+kB24IYq/jyV1ockWmCvYepIm/VVRRdvukk3gFs9Lg+hVCn8LCBDBiH6KFg8GdL6IpJHR8+dW6Snw6H9V88KQry0SD6ylaruZCfxyTbv0QimmiHRbMv5lTr0Sqa5Tu0MQgRFjveutBSzM2vgk0Vz81Vv3q2+LLvJBBbWMieiyMqC00ggMQjcPuGqCscQk5V3Q5H8auHrIPaTv/8ZwKAhq8brglFQm7xfekey9Kh51lT8a7Hqmw8LwY1dNEjH0Y8o9Elx/cYzriC2jBr//DRyDVJ9sLAKORHMLADcV79PRbRd6XKbVH7DRX7vHFp51WzQSCpXYMdH7mTAAQydseeDBOIV/n8ySf4KQvpcqCvCLCiBqlKdvVB06oF2qcpxPeeRgMNPn+sKHQeCg6824p4NMC/fO1GkG4m9qmjzEHF6N71W2rfrFnwv+gc8tLasWGUjb4L7B4BEm1af7y2fYGSUrpKT5h+L/QZYDCvef8Ey4NFUuQbhz3MIP6O1nDX4SP7lyEFsBaVvuCj/HXRkqCLt/tGcsC5zVELBzw6EkyQW42WboVE2UN9k0zY9qWtsDEhp7tvOkgZ4CjvOcn6QWGCMToPhtXZdtx7bqREOATY7S5c6+4+7Piscdzc1f0bIU7FdBJLdDP2UkrL1UDZ3A0NtfpNVZF//4jqPsfuZzDBw83XSJ+LbQDVvMsFK4ubtfnwcWI9YCXVg9Yej7LsA8E3uRZM3UJp2LacW8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(136003)(376002)(346002)(451199015)(41300700001)(122000001)(110136005)(66476007)(66446008)(66946007)(54906003)(66556008)(64756008)(76116006)(316002)(4326008)(52536014)(8936002)(8676002)(82960400001)(86362001)(38100700002)(5660300002)(33656002)(83380400001)(38070700005)(478600001)(55016003)(6506007)(7696005)(9686003)(71200400001)(26005)(7416002)(53546011)(186003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fnlHVcN8eV/46759UB55KbjxiUhtmbui3ygUDNpvaOqEAUjWCb7W/dCCHjD6?=
 =?us-ascii?Q?gPy0PWHgWBXnArf61/ECzpR+ySnl7HA8aunnhR3YQJ+/zosYlylPpQPXqVlR?=
 =?us-ascii?Q?s9tZfqkKCmHaQ2pYYZyDPnBjgc0hgIuGqSWnVdeWwPHt4X0oU8Z9hppddpAY?=
 =?us-ascii?Q?uQN2n8wqAbNSX+eYLRiUloXpLQME3mU7v6mwRS8yPC6DfsqMAbFxi70flVdr?=
 =?us-ascii?Q?MSe2Ls7bfg6kyxahpALhvL3GA5Idm1Yp/pP2ilWolhBJn02Q+ITH1ZvuJZcI?=
 =?us-ascii?Q?1AjcQO7kd01e6cm6JKs08SCxRCUnlfkEwKiCBDh5qpsLKSKI6MiQcRtFmJ2U?=
 =?us-ascii?Q?PKkum9yCFItiqOwp5k1sFmuQmSu+GwHq8c79sySWtZ8EvlcgB/r/seTPKpn6?=
 =?us-ascii?Q?kATobN4L9/NnEUDvMgfTLYqXTU4kfiLXXQfvIDjdkkJvL6Az9Ar6s8cTHZeo?=
 =?us-ascii?Q?NUqflxug2ihGTGGrLpl9N/aZSnv7B24W2djdG+u1bMLomGGjV89L7m1hEnaY?=
 =?us-ascii?Q?V05/1DaBNjzo0JdMGpp+EY55M9ny79T8Nan2Do2GyB6S26BEIMk15V1iwjc3?=
 =?us-ascii?Q?fxjIUk4O4Jb0IxG2SbKknic7OOGFEB0RIx8roY10OkAfhCDv5Eu9/eomTJWk?=
 =?us-ascii?Q?lalZbX1oCS2s7RIMARE6kpXEcGsmLrtGnAazwvQAuPj/4WD6qmY7W5ukK5bt?=
 =?us-ascii?Q?JrXvxeWbm137EE4y7m3CX2ZEiOdUhRuJ0nvXHTNnsThtTDTeS9C9HxpjVkfL?=
 =?us-ascii?Q?sHi56NuiVwMb1N+qmYQh+uDNkDxWFOC/rj+hkV9/+kkhXgJl7pgjEn1x7/Jx?=
 =?us-ascii?Q?nTOao0VSTRlCt5llqiHINKxG9osLWj8MH5lmMCM0oP3lz/4KCVUeYw+cAGOx?=
 =?us-ascii?Q?iVoY8Boy4PfY0HnW3ny5PPQgUpGwdvhdvUMnDCNmymgdShwn2toSCpNVBIYG?=
 =?us-ascii?Q?jwUp9JWSO4aDJ5yTia+MZEjB84zoeJ6HDAHicYj/lKApImt85waNV5prE7LD?=
 =?us-ascii?Q?vys2bhYjG7rgD7HLyQQPJdc24HOMiVXH6kLf0RcILZm8V9PHCxed5/1OfxMH?=
 =?us-ascii?Q?oxjlVwnrM+Mg66oS8HFmuLOvJVFCIFeX3A08Od8fhcewOhWepTPtFntv/e6b?=
 =?us-ascii?Q?hPwDuiackpF7KSB5VW4ckfo6GdqmjVP4oyT2qACTV4u2FtpqpiHOjnIIsTeA?=
 =?us-ascii?Q?Icyf26Kv5KbiLk/3ORKIQd5BBC9OVaAWsjf/HNKD6cMNxzKDepA5uLK5cYR/?=
 =?us-ascii?Q?3rT7ATelZBsdrEoyyXcr3p00uJ5G+M6TH8LNMgHHoeyeHySiYuONb2vdFVZA?=
 =?us-ascii?Q?bXG2FvEhV24glq2v/zIU0WjWSHFR5FRi/humhqn5ym+A1N8PBKthNI++DVjE?=
 =?us-ascii?Q?jVDCqvdcpZ+13T1DC0hyClrzNanmlldARGSnA7ej9Vr4HMXlmVsRIHVHEWyt?=
 =?us-ascii?Q?s4YfMX3a4+pXz1uv6BEwVC1zBgx5oPYPvJpg7MBu1kkF56bgNlrSdImHHgip?=
 =?us-ascii?Q?I1s4HwPCa47DCueZU/RvRCHzGGjmSKCm/ufvX8yEKBNcIisFOYpRcAlanune?=
 =?us-ascii?Q?0JibIdw+8UB4T1/Wz9b8QpTQNjC8egptHY+oU0l57C5gvxkQJ1+VHGMHq/bo?=
 =?us-ascii?Q?yg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50dd5b19-9b41-41ad-f98e-08dac28ea648
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2022 20:11:55.6666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZyBrWLB8B6oAiryiHnwuOAoQVFtZ9H+dMeJka8dd4m4G60izxl6B45QX9dWbM+x56pikXuIcPsc95aeAbMsSHXUiCCBpVEgojhrKVSSmmLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668024721; x=1699560721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DxElPa4Noa7Xtxpm7tEWbm/Qzn7EzpE92yRYpLbMOe0=;
 b=T+aLYQVlWWOv35tcuugJw1W8HrRxUatS0Bk3ZfbPQpeQVw0dZqKftvuR
 RA3qBiYvKPAgiMm2j2t9/o7+M2PZS7wVOsLVNv6TXdRKEn+wdqzFMoYKs
 ulCtECajdCX+O2AYmHv/yBIp7GpHvtslmFSmrGGgFcoK/iboYBEryWbVx
 tx7RROJZryvVZAXBZiZX8++HkyTI5ELJI/dMiBg8gfNidVFckW7ctbuy5
 Rtuf/P+HtO83uArkI0uXRVRZ44XF+HLC34qM+oF+kFVN7O3CdTwOljYos
 3cf/2OXHWJjRdMgu5btVIwOl5cr2bUqdHAvPcbxS/YyMoFTB+L0iUehiG
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=T+aLYQVl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Do not restart Tx queues
 after reset task failure
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
Cc: SlawomirX Laba <slawomirx.laba@intel.com>, Eric
 Dumazet <edumazet@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, "Piotrowski,
 Patryk" <patryk.piotrowski@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "sassmann@redhat.com" <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Leon Romanovsky <leon@kernel.org>
> Sent: Wednesday, November 9, 2022 10:21 AM
> To: ivecera <ivecera@redhat.com>
> Cc: netdev@vger.kernel.org; sassmann@redhat.com; Keller, Jacob E
> <jacob.e.keller@intel.com>; Piotrowski, Patryk <patryk.piotrowski@intel.com>;
> SlawomirX Laba <slawomirx.laba@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net>; Eric
> Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo
> Abeni <pabeni@redhat.com>; moderated list:INTEL ETHERNET DRIVERS <intel-
> wired-lan@lists.osuosl.org>; open list <linux-kernel@vger.kernel.org>
> Subject: Re: [PATCH net] iavf: Do not restart Tx queues after reset task failure
> 
> On Tue, Nov 08, 2022 at 11:25:02AM +0100, Ivan Vecera wrote:
> > After commit aa626da947e9 ("iavf: Detach device during reset task")
> > the device is detached during reset task and re-attached at its end.
> > The problem occurs when reset task fails because Tx queues are
> > restarted during device re-attach and this leads later to a crash.
> 
> <...>
> 
> > +	if (netif_running(netdev)) {
> > +		/* Close device to ensure that Tx queues will not be started
> > +		 * during netif_device_attach() at the end of the reset task.
> > +		 */
> > +		rtnl_lock();
> > +		dev_close(netdev);
> > +		rtnl_unlock();
> > +	}
> 
> Sorry for my naive question, I see this pattern a lot (including RDMA),
> so curious. Everyone checks netif_running() outside of rtnl_lock, while
> dev_close() changes state bit __LINK_STATE_START. Shouldn't rtnl_lock()
> placed before netif_running()?

Yes I think you're right. A ton of people check it without the lock but I think thats not strictly safe. Is dev_close safe to call when netif_running is false? Why not just remove the check and always call dev_close then.

Thanks,
Jake

> 
> Thanks
> 
> > +
> >  	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");
> >  reset_finish:
> >  	rtnl_lock();
> > --
> > 2.37.4
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
