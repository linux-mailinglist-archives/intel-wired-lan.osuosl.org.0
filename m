Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05099731CEE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9269483A90;
	Thu, 15 Jun 2023 15:45:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9269483A90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686843957;
	bh=cnJ2OhktKmNbA5TZJaeYzWzUrpmYmX+AhR6M0895Rxo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GyFt3m0o9GgU5YSEBpCDbL9wn5pl7EOjyrWwSKqTZeBLvkSIGLeN73NNbNoB/UmVw
	 6rVyYYcI/oGuDtlfTJO3Q+1ek1GaUodjXgRrTFc7oBrWbZql1jvvdZGPgwj+MUYQ1l
	 jLAJnnTzJY9zQKsac9BVMwEO1JaXKhTK+nS4U+kEgRqy/sJcofOdqlgqHtmLDFKNcX
	 zrYXi7rAZOxRy9+RIAvOm+3AhMj0Wn+la9PLk4DP1ox2t6uuXTlJVkHafxMxbOHPQ2
	 /mjfbIWqHgJpYCCpuyf9FfmW9hVMvi3KQRH0l8uB78fkwYteDMwnCqPvu2ohU4ftlw
	 O4NfjGNaU/qAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QwtRy09KSmhx; Thu, 15 Jun 2023 15:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56989839E5;
	Thu, 15 Jun 2023 15:45:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56989839E5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B7EBE1BF969
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:45:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8D36C42029
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:45:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8D36C42029
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ml_byzVDjJYE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:45:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 390F042026
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 390F042026
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:45:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424866307"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="424866307"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:30:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="802438122"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="802438122"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jun 2023 08:30:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:30:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:30:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:30:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pmg5lFHf0Rc788ALT+gcYl77n3asRMwrCLtC8wAtMk1RDu0qrndZkQUVda3IWKUiZTAEebL/V1UzmrLQo3Po0vUnFap1cH/DAkB3TTs+/be3SI+NFJ4euZR2O9ikCjzPaUzc83A0oOVPu/64CBkyYC7y2mPWla/9zJGjYhezU6BtlPvDSU3bY5N9t5JyCu7fzvXNPGoMWBQdCgvmnfgeIxxee1IH4SgFLwhKs9VkE1xCiAvLlB/buUIbiqw+C8UyEcHNGuKgsHB9Y3Y0UOE19o/QckDmidRdRfpSa4gCLhi6fS5RMgeUQR7OCajvwUvn+1AN8DxJLg6gaL7Ba+yRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GS+tSQY9z1HiL+3QrJBLHuwfAXopJl9n5AuV4g5pyv8=;
 b=ibTKH9wvd4veS14K1BYZreG+yB1lraGR59AyQpBki7pN6vCbZPYNQDt+3xfP/dZ3rBwt155fSbtsKWCu/ic+hfoE9FkG2Kk+dOcpi8NphgdadN7qopaFFmcYh6+RhFlFmR+Ec0ygPfRU/eys39iUI4xvz8G+2KC7WudC1wNGkf98muJ/9O3kg9+7CRMv4A/ZmmbWQw8fj8OWonjOoGDzBNdU0L84getGtoXUmpZrGhsqpNCXAm/vg3JnWfaTXefCek6+MvDjG5rEwWDugkfCdxiXgEB1ordxbMNK4EMwSkVcANChi1l4jq6+RFQyrDyWxmpK6xp8IRBd7apfeKiiPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by SJ2PR11MB8449.namprd11.prod.outlook.com (2603:10b6:a03:56f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Thu, 15 Jun
 2023 15:28:46 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:28:46 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v10 2/5] Revert "iavf: Detach
 device during reset task"
Thread-Index: AQHZl74v4rLKj1m2iEGJZxKrUpAOvK+MDJZQ
Date: Thu, 15 Jun 2023 15:28:46 +0000
Message-ID: <BL0PR11MB35213FC9AABB29B5C52E64CC8F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230605145226.1222225-1-mateusz.palczewski@intel.com>
 <20230605145226.1222225-3-mateusz.palczewski@intel.com>
In-Reply-To: <20230605145226.1222225-3-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|SJ2PR11MB8449:EE_
x-ms-office365-filtering-correlation-id: 3f9284d4-5ba0-4a33-fed0-08db6db535b7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tk2A81paznsK1XLh3yqkVX1aoqdCt553YpdqFRLXTe2kJrzq/zojpNZ9tHaAt3WULo6VZvH7IEPTPnJk9awAKPDB24r6oOF7bEgliKMg2pNob/Ol5XLLvrKs8xvMxW+IBdL5A8croAMKhkCgCG5w/EMajiqw/eIyMc6puV6wudrbolIodXYh6Bdlk9VMMAvDHdootbv+FqN0iehu9kQkECwt187ev5Rp3wqr9kZMyfooD8wwPfKTBI7NGsF3/dIkwxV0sHkDTYMQ2i/4Hyn0lsXAN4Y5Zk6nTzwH4AbpGBELGWeCH/97l2I68RCVhNdTJBfz2ij4BWwL21WgWwV/HryEk8XOKFgd8wzjggzqF2qb8ArT0DicqBj82g7F+kvktfupaEGwFKyfH8Vet45mv3Mb36BcYDZWBqZLoIWNPZOhn3S7KJAIeOg/npusbndUQsz1uGrla+cADcDWLMgl+mSCOLSMFbKf283Wv56STSw6Zs/j2PH4kclWm8pqfqhR+RU0HYPI679Y5LxwqZPPXkO4lZF7Jriix1D/peRnlvucSOl3ttXfDPHjlvNcYBxdPLZ6TK4QDZLp+SzErWRngo403vgo+8u2yD+94HUYj+Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(346002)(376002)(366004)(136003)(451199021)(38070700005)(33656002)(86362001)(66556008)(66476007)(64756008)(66446008)(4326008)(110136005)(478600001)(76116006)(66946007)(966005)(316002)(7696005)(55016003)(8676002)(5660300002)(52536014)(8936002)(41300700001)(82960400001)(38100700002)(2906002)(122000001)(186003)(26005)(9686003)(53546011)(71200400001)(83380400001)(6506007)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?qp3nthPDG3Tz6kubjyS7i3PFvZzgMx2B16k3MPQIv7CtV+XUFTsxBIwGEo?=
 =?iso-8859-2?Q?yq86arOlEhy0Hsq6mKQHqXguB0pgBTBPs5JSckXVCo1fKcISiyxTHKW2wV?=
 =?iso-8859-2?Q?2XiikOkXb+2PgeaN4th1eaUqu3IKLD6nBXLSPeDvkv/w3u28kGuIGSAkKO?=
 =?iso-8859-2?Q?3M/sjwStuiXMBg28xj/3K4DNhYIG/7i7eAtCBMZxmtQMpFDVd62Fx9BtSY?=
 =?iso-8859-2?Q?erhkpmiob2sLuAlpqaW1PBBJkzrMq2XmXY1GhdR3bxzeuLdgeWsPoXAXFp?=
 =?iso-8859-2?Q?NLvq2VdqiNiVuykbmnewPZk6WLCXlBh0b+4aqHs2klAudRWXn8yTNLe/qB?=
 =?iso-8859-2?Q?/AwlJLhpxJws3CM5675fReO53ZrdbbpovM+S4aRRa2DPd9mAGjD+/Lzprg?=
 =?iso-8859-2?Q?dtbEilA/D+DYPdoXGyY1jQ6W3D/dcOfQchkTiSzWeiz8QiDzOpvcpUU5Xv?=
 =?iso-8859-2?Q?eSScIoBzgm5F+oCa9ggQCApV7JviuVXpEETLI2NYcbBP0YqBlfYJb+ZGKu?=
 =?iso-8859-2?Q?5ifGz5OC7PpefOSzdopHpElye4H4lmC4EwXbmU1LdNejBlSgE94KzL1uUf?=
 =?iso-8859-2?Q?22jHZeTD0XdwcALTVcDmfSi5t6e9YhPyC259ri+0JfaRHOwRr2I1sarBnW?=
 =?iso-8859-2?Q?Ou+2AceZsUEQF8QtSptmxWBEVlhoiLCikO1vsSLT/d1Iop/dhcg3Vy4cqC?=
 =?iso-8859-2?Q?aRjnelnyGf2wCHsd4M58ByO8ceH4XOHwV9MUNOVmAxSzxyw54rng2H7FpO?=
 =?iso-8859-2?Q?G0tuoTu2X5C2eqUeynyqrzs2dahNDo94bsoFpN7pKGrHIfnwjO8661N2pC?=
 =?iso-8859-2?Q?xbYTAA2XTVprsXKMz4zp59oooUVSG1el/+7qEE71U9Bmle6aKzS/Gl2Drk?=
 =?iso-8859-2?Q?G+6dNFPMQsRCaPi7zYl7j3o2DqyJjqIVCPSLFdlh5BmllfFxfHAe8dSUfo?=
 =?iso-8859-2?Q?HxbSEH2z0sF3qk03bpHmn4sku6Y8uaJDBADCt4NNyYpTbAmBmB3rhaEQuj?=
 =?iso-8859-2?Q?LLnPWEyTSXJTkQE7YZgQLuUlRDnhKh30dvhOxovQeQIItv18lxVF5ptD/o?=
 =?iso-8859-2?Q?rc6LnJeQCPIEmfhTeLNVwhDa119ICEuS4FhqD6oeSg3H+JGYukADf65Amm?=
 =?iso-8859-2?Q?KNrdkyiXpDGrUX2Sk62Vpnk7LW5Lvc2q5GtSk3RttKHVHyxVEZPTmNHxZK?=
 =?iso-8859-2?Q?Jbm3wcozmjjrmhDRD1vwZWHipSccb+rN/9+3ErqPFPexHYRy8vFZk6msdw?=
 =?iso-8859-2?Q?JvJS9B6rX26/TCzAE1ZE/o2PQNbtfCIUHLHfgbxROVuFARVde3inFefPMt?=
 =?iso-8859-2?Q?T/e0ebYnOA33JfpJ2TEaP7wf4bEJOxijTTPh3rR+FQPVry4pJbC8oMZ4iI?=
 =?iso-8859-2?Q?woG38FcqR1yhEr0OjpTmKbbHZYLeoUt2KKdiqpdkcSI2zniiYPgXQp3BwR?=
 =?iso-8859-2?Q?sMjHtzRVND8GT/11JCfmSp84Z/Qxh4almQNiOuZtrgT8G3rE/jqZvVPqQ6?=
 =?iso-8859-2?Q?zBQiaTGPy9D3cNNInhJgZkPZ/wKABnBhO6BiV1YJ8xGIaxQswxgfrkqztR?=
 =?iso-8859-2?Q?1AYmhk23GGeh1fYgk2/qx7powNCSCJ8N+j2GTl9W6PAPDDB3ZsiuJcI0kt?=
 =?iso-8859-2?Q?fQH4E5GMSlrVHxep18znI5CZ99zKsGOvRdWVq54E2o/kg+DXi0bvP6NQ?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f9284d4-5ba0-4a33-fed0-08db6db535b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:28:46.0219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C3Fepnd1+xRHVYJunMDp39Vakfc1+MF3vqdktwv0UQWID6OzxJ4hCu/p0wBYIttqw8jkRy++pzJje/zNYxb7nOSluKLjVR9Kq8yau3HJvuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8449
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686843949; x=1718379949;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=er0+vvxraf1ruOLJa5VO5ZEyP1SczA5xQeCgP6+fYbk=;
 b=fMz68ANg7ey7BGFQpKXMx6eG0xCak7iDvkrZULPRnBDDmTa8QLeXGz8P
 J8lxxcPy83t1CeIflV2X1qPAph9hse9cVQ5AmDQefP7oRW/9Uj5hRA0CT
 x29hVlLE16TPlOlpCIKP5VW9Q8L83e8yD1qoiboAJk6BLZfvgSFHpwvlG
 tnzGdbMcuzuDTrjkQP4uZ16UbRULkPS6QEZCPRd+H8mhWDH8155uslLWq
 VJvuFU7uH4cB17DH5dskC2lWpERF1Z7VlPV6HeL0CNs7q/HJW5uyHHUli
 cwaj/hl7gLXUxBgLnlXXM5Byl4lEKpNtcmjkCtQoXV5fTVizFJC5aHETi
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fMz68ANg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10 2/5] Revert "iavf: Detach
 device during reset task"
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
Cc: ivecera <ivecera@redhat.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: poniedzia=B3ek, 5 czerwca 2023 16:52
> To: intel-wired-lan@lists.osuosl.org
> Cc: ivecera <ivecera@redhat.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v10 2/5] Revert "iavf: Detach d=
evice
> during reset task"
> =

> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> =

> This reverts commit aa626da947e9cd30c4cf727493903e1adbb2c0a0.
> =

> Detaching device during reset was not fully fixing the rtnl locking issue=
, as
> there could be a situation where callback was already in progress before
> detaching netdev.
> =

> Furthermore, detaching netdevice causes TX timeouts if traffic is running.
> To reproduce:
> =

> ip netns exec ns1 iperf3 -c $PEER_IP -t 600 --logfile /dev/null & while :=
; do
>         for i in 200 7000 400 5000 300 3000 ; do
> 		ip netns exec ns1 ip link set $VF1 mtu $i
>                 sleep 2
>         done
>         sleep 10
> done
> =

> Currently, callbacks such as iavf_change_mtu() wait for the reset.
> If the reset fails to acquire the rtnl_lock, they schedule the netdev upd=
ate
> for later while continuing the reset flow. Operations like MTU changes are
> performed under the rtnl_lock. Therefore, when the operation finishes,
> another callback that uses rtnl_lock can start.
> =

> Signed-off-by: Dawid Wesierski <dawidx.wesierski@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
> v1->v7: no changes
> v8: changed commit msg
> v9->v10: no changes
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 13 ++-----------
>  1 file changed, 2 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c815ef87e27d..6945f462c56e 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2991,11 +2991,6 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	int i =3D 0, err;
>  	bool running;
> =

> -	/* Detach interface to avoid subsequent NDO callbacks */
> -	rtnl_lock();
> -	netif_device_detach(netdev);
> -	rtnl_unlock();
> -
>  	/* When device is being removed it doesn't make sense to run the
> reset
>  	 * task, just return in such a case.
>  	 */
> @@ -3003,7 +2998,7 @@ static void iavf_reset_task(struct work_struct
> *work)
>  		if (adapter->state !=3D __IAVF_REMOVE)
>  			queue_work(adapter->wq, &adapter->reset_task);
> =

> -		goto reset_finish;
> +		return;
>  	}
> =

>  	while (!mutex_trylock(&adapter->client_lock))
> @@ -3206,7 +3201,7 @@ static void iavf_reset_task(struct work_struct
> *work)
>  	mutex_unlock(&adapter->client_lock);
>  	mutex_unlock(&adapter->crit_lock);
> =

> -	goto reset_finish;
> +	return;
>  reset_err:
>  	if (running) {
>  		set_bit(__IAVF_VSI_DOWN, adapter->vsi.state); @@ -
> 3227,10 +3222,6 @@ static void iavf_reset_task(struct work_struct *work)
>  	}
> =

>  	dev_err(&adapter->pdev->dev, "failed to allocate resources during
> reinit\n");
> -reset_finish:
> -	rtnl_lock();
> -	netif_device_attach(netdev);
> -	rtnl_unlock();
>  }
> =

>  /**
> --
> 2.31.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
