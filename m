Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D701D58505C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 15:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 253E361093;
	Fri, 29 Jul 2022 13:06:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 253E361093
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659100007;
	bh=xgapTIhDe12E8qANQN+ZG3c5bSthX2RF9uXtacXIiSU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aBJOFTXIG+cYB0XR34iKiOkDYU7FruCW11bxqikC7eKyuZynAUbVAXhKK/ktlTQfU
	 +D2YXFppstE0mRlp8vKWh4LJH17k2JvunUqIQzdgCoi9a0x1s0Pw8YozXOi4W3mTw4
	 6DRFbylENGll8zsTyZ6P1fORnNwIxq/4M04CySuseXBfHZBLtgE8iJzv6k3Lm9CHMD
	 zZlHN4ndiDMNzaFufA6/k7TBvBERIijko53Sa6f7IwiT4src5Llp/HdSdyz5QwTvR6
	 9gWXw5IIAK4NkECdwrpZ7fkv1mJVRH7UijmXi6jzglMA2wgzcOi6Q7Cx5upluZTNhc
	 2uKlAUeb/3APQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NdonOC_nFsrQ; Fri, 29 Jul 2022 13:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0768361055;
	Fri, 29 Jul 2022 13:06:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0768361055
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 776771C11A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 13:06:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50A4660B20
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 13:06:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 50A4660B20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 61CDNC62iBRI for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 13:06:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E6BB60D50
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2E6BB60D50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 13:06:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="268525271"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="268525271"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 06:06:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="847112041"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2022 06:06:38 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 06:06:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 06:06:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 06:06:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPZAQf5iYiq0FdjY5v4DRL0MO3mhjQUOTXs8PjuJoV5HYRv1rqrmijxiDDu5CfR7h8LS20FzEbKX6F+qsmQ/M0/UiiA3MnYcVMMl3u3c3RRBzBFBOSPefK7PTrz90dBit5EHoWHjfkMFZy3FvFeLxzTLeFpksCLt7s18Mi8FYfjPxqmIMsXkqck6F8Z9LynhNQweRM9OadS73Fsw/pQoOdhIRYXhpDzy24qd40MneLpxdpg/BkXS6tIcGQQoAK3g7x9mpnHB/2z64FDBy9YfzZEb/KqIv9a5ZWnL4JL+Gig6DC2vo03TRFc54tMR8Pg9ss8AbkwiOP2t+QqXXb+8ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9aicqqQ7mf1hYAnwCy0gUFoGpnBt+HlZxF3krliIaoo=;
 b=YNCf9bWCImJ+qp0Xmahf9tmloeftLJrLw5Z/X743IAJPTfO1r7LEt8MSKZmfB7fjZPL/dclrz+ZOUvjS8EDW9X/gO286WV9lmaVTKNZQAw1j191IdEkmNqzZaGrxM4vsZY1viNhB6Q5sszK/H4O2MqR8RqQ9ai1aYSkJBisP5clh36uZxdt2yJceVOzNSpD+s29dtlo7Y7AW9OLtZbXPBbxSl/3nl8x8SDEWS7Lw49VRx+vZs53U2Jt1G3YPFaVZxoLO4s39Sv8As8aqmCWCSlo7a1EDzDGPRJwITTlotph4r3BEZblAkVsYPBlKXe0O5LnTOF4k7rOWUg48hl9QPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3449.namprd11.prod.outlook.com (2603:10b6:5:d::30) by
 SN6PR11MB3263.namprd11.prod.outlook.com (2603:10b6:805:c5::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.19; Fri, 29 Jul 2022 13:06:35 +0000
Received: from DM6PR11MB3449.namprd11.prod.outlook.com
 ([fe80::543c:e7:1ab9:668c]) by DM6PR11MB3449.namprd11.prod.outlook.com
 ([fe80::543c:e7:1ab9:668c%5]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 13:06:34 +0000
From: "Siwik, Grzegorz" <grzegorz.siwik@intel.com>
To: poros <poros@redhat.com>, "G, GurucharanX" <gurucharanx.g@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
Thread-Index: AQHYkgO8c+Hv7GhaGUOFdxFQWWdjKK2QPmWAgAHbDICAADFu0IADKR5g
Date: Fri, 29 Jul 2022 13:06:34 +0000
Message-ID: <DM6PR11MB3449446288B903E841DF06E884999@DM6PR11MB3449.namprd11.prod.outlook.com>
References: <1657199751-256188-1-git-send-email-grzegorz.siwik@intel.com>
 <1657199751-256188-2-git-send-email-grzegorz.siwik@intel.com>
 <BYAPR11MB3367E7DA6E06013CAC612C91FC949@BYAPR11MB3367.namprd11.prod.outlook.com>
 <668ad644d03b30975b88ac84c9e4a1263115095f.camel@redhat.com>
 <DM6PR11MB344990ADA7EE8FA40918C64D84979@DM6PR11MB3449.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB344990ADA7EE8FA40918C64D84979@DM6PR11MB3449.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad60f931-947c-446b-63fd-08da71632a26
x-ms-traffictypediagnostic: SN6PR11MB3263:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mCdK22++EB+uuNHu6UigG3/1t9t/vufmNqijD+G/F+rrXv5JdBWRiHB4DORyY1NJV7XpoMsV+A9wyxn6QA9ed22YGzH/n1vKiCMw3Bxbu/RqQL1eDhCov301d1Ou5F7Cz4frh7DTaYUlWx5oP6g4kZ7CFGk/b2I5Zcf54HsbGQnaiHhX75wzEmHZ7H7nMXSLx6ru8ChB1Hpp3uZr0E3tALAKGdO+tN1xfAYtZBSX6YWq7vP2CwswO08QYTZgqrqKF2etyKmJ8JscWtpt+rGSUveTYXaffH0M/lToOCBaVnQd9+bepr3MdGWWfYZoFbu6w3z04nmkQGxXOCsaUtISr+qHj/4hkrp/W89Qv+wg3F0XdMF9QezT+brTISd8Y7zcrMA35JV4wXwqp5QfAUdPCXLFyWyFlC/+NujUeE++i7an4wk8mXjYYaMIse2rEd9wjq/hd4IUAtxCEalGFciQOS6JHp+nBmFUH2l1wacM22ENkwvYOArYP3vgQ3zTkACQLcOALBXqZYRGQT2hY0nwhGj/lGqhUINqInyDCGj6IkOBsz9qXp85F2GBznlkTLKwmrCnHvaIVwrW2lM5+dncfDSpLIBPf2CCnmGOu1px5kNG0v5xR++Jcr4ZTJu/eVg/5offGHVjnbJDMa5liPRb8SnXDIBvnF9Y076qotBFw4HYFdqlTqWXV1RpFNQ2/B3nu6xEFI7LyyWJPHsv4QuJU9hFvZ6oljals2s1z2561D1/+CLdQ9t1e3uDD26ilopECodAXboQhQm/h+NSw0slqfSfHjYc7suk7bzwN4FeXEMwTJKw6BKY2Jw77VqZhvsKS9oZNyKykzLRXXeCogCXaxzS6z0Dh2CnzPjXwb8JPPW5E8ey/IIH6Y4j5ON9fScc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3449.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(396003)(39860400002)(366004)(82960400001)(66446008)(33656002)(6506007)(38100700002)(186003)(86362001)(122000001)(38070700005)(83380400001)(55016003)(478600001)(53546011)(110136005)(8936002)(71200400001)(52536014)(316002)(9686003)(64756008)(2906002)(7696005)(66476007)(8676002)(76116006)(66556008)(66946007)(41300700001)(5660300002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eVhOcy9RS2UyNUJvUWhLQjUrRHJ2MnJDNUZPV3o1N2ZuT3Q0b3NETHUvcFpZ?=
 =?utf-8?B?TDFxWkp6VExtZnBHeXFzWG1TSlIvQ3prRDJSeEhUVHFHYm1HeXdidHQ3Q3pP?=
 =?utf-8?B?cnNhbTY5WDgrMjYwcUtMaFFtcnR2SUZJaWNycThzQWZmbTIrZmMxM3d3VXJT?=
 =?utf-8?B?R0hPTForelJCSmZCY29FSEwrZ0V5dVJNNWxLUm0rek5pWDdMUFVjVkVydGd0?=
 =?utf-8?B?NmcrVXhYeFM2SWlMd3V2SEVxUUZobktlNUo5WDY5SkxFRmpsZXpod2s3ZHpF?=
 =?utf-8?B?YzhKdmF1cG8wZnBIejRWejRWMzdvOCtiZytmb2hTTXhFc0hTRFdtR2hYRnhP?=
 =?utf-8?B?d2dlaUNjaHFOdkxVZjVtdUZXUDIvV3d1eWNtQUI0NEhldTJoM0ZOOWFaUkdh?=
 =?utf-8?B?WjZuOXhUbko0MlpyUFFxZ3A5MDJyU2ptS2JlRDF4TFhweEl4R0FZdU5VYWlX?=
 =?utf-8?B?Ny96NXdOYVJRVXQ3RDMyL2xkSFdKS1Mwb2hSZmk3OHlaeXNaVUkzN1dySldo?=
 =?utf-8?B?LzYwVXpKaWcwbVEySm5IQ0hUMmljTVhwTU5DYmhLd1pWMVdOQ0VmcEFyUDFG?=
 =?utf-8?B?a21XMndMc3RVS1lNUERhb0M1WURqWGZBMmNON0NVWXVoRFdaZUUvbzRid1Mx?=
 =?utf-8?B?T3duVTg4bUg5TEtvd2tYcGUvOTNqNWFEMUo0bjdCVytya1kveGxxMFkwM1dB?=
 =?utf-8?B?N3pscDIreE1DU1E3eHlJd1RlVStCcEMvZ2ExOFRqbjh3V0lYRmM3eWZSR2JT?=
 =?utf-8?B?cDNmKzNHTldMbFdiT1cyTFlobTBadm41VDh5KzRQNG94K29HUi8rZ2hLVlVF?=
 =?utf-8?B?eElHUnV6UG9XU3pQUzA3S0pCQm0rZk5tSUtRRGtwM0xDdUN5N09vTXRIdUVG?=
 =?utf-8?B?MUNUaEtLeXB2cHI4MFBpTG83ZGVsd1dndW5wQTBnYkNCUVJrVlVJNit0TWht?=
 =?utf-8?B?WUp2MEEraVNXY1dDM1h6akd3UUJLSldOQjlXQVNTS3RVcnQxWHQ4ak14TTdw?=
 =?utf-8?B?eTRSVVd0VWNSaWhGajFCbGlCcFVKYm5wanAvRTdiWEI5blQ3RWZsNEtydVdZ?=
 =?utf-8?B?WlAvNUtpd0RxRXFmMkRmdnFGSEpKM3kzZ1VwV3pJWkFHdXFBNEZ2QUlGRUZZ?=
 =?utf-8?B?T1MxYW9BYXJYcG5ueVFhY1hlWHBxSmJUc0p4Y3hGY2M1S1hEbjYySnJtcEJN?=
 =?utf-8?B?S1RodDczTG1xbFJYSUtIRVZnT2ZWZU9mVVRLa2lObjE3aVpyWVRGbEZXb0Js?=
 =?utf-8?B?M3pKdWVrR3RTQnFaQmE0S0VsNlBCR3NTbW9TOXVnVXJNb3pJR3ZpcWFudGVu?=
 =?utf-8?B?dUFpQWZ4OXY1QWc0L1cvOWt0M3U5UU9zV2FwVEpFRkZmOWJvL2QyQWZGL0l0?=
 =?utf-8?B?OFpLU1NsdTJiNjNOcFVUVEk2dkN0SXREaDRYY1ZVUDVVTm8xS2ZEVVc1ZTdl?=
 =?utf-8?B?K1V2L0RlYzliTWRGL0V0TDBHSUY5M0E1ZTJEbHd1R0p1T3VpL2JPWllQQmhv?=
 =?utf-8?B?cEgzUjVvNGsvdGpidndobDBjdDFIUkVVSERDbW93Zzl4YW9MMjM4a2N2cWlV?=
 =?utf-8?B?VVZ3cXljR2hGQ0R5REJiTEVLZGRaWDgwWitaL2E3VkkwZzExMGxteVlEV28y?=
 =?utf-8?B?MkJRN1VOVkt2UHc4Q0pjWG8yR3dDSEtDSWMvSFhXYjFhTndTVFllakFxT3I2?=
 =?utf-8?B?ajJETW9vbXdGdEp3UkdtZXByV2tFUFpzTEhCY1dpNXJXK2FWMmlKcGVIdWJw?=
 =?utf-8?B?RXArdjB1a1IwOCtYNEVPd3diZVVSTFptcmlLd203QllUanozcVFRcXFwOHhJ?=
 =?utf-8?B?TWJ4SHJMZnNWamtDNUIvblk4VWZFdVlsdXF3d3JkZUVqaWU1aVFoanZWWWtG?=
 =?utf-8?B?dytwZDdPU1FYTmk1eE54UndvTWFQWDlnZGdLdmRpMGZBeEkrdTlXQ3FzQVFY?=
 =?utf-8?B?WXVzN0xFRngyWXFFL0lYRzBrVG0xL3BVTkt4dVY5dUpkSHNTTUk1MVI0K3JW?=
 =?utf-8?B?ZU1MRVYvNHR5eDFiT1M5Qks0bHU4NXU5THFEbFRMOGpHUnIzRGMvRjFWMVNr?=
 =?utf-8?B?SUI5eTFDaDJEVGlXS0ZTRHBnUGg2dUVXNDNGYWNWRXZkS2QyOUVST2tMZ2xJ?=
 =?utf-8?B?RHRpd1o3ak55bzFzTHJLSmpiTlZxdENNdHFCTVhkcDZSdmlEbmFNVkN2b1Fi?=
 =?utf-8?Q?oK2P1oWnLTxOSyKWUgYgq7mpplA2b/ORzAwPWACatrXL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3449.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad60f931-947c-446b-63fd-08da71632a26
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 13:06:34.9050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2pvOS1oFfH2sYQkpG3KHxph5a3kBsB9cD1Ne8/AT2rHtj346jVONL4sWBRcVe74BcxZTztqJIqtc/dITbMSEysZSI/ODo6dF2o21/W10uPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3263
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659099999; x=1690635999;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9aicqqQ7mf1hYAnwCy0gUFoGpnBt+HlZxF3krliIaoo=;
 b=KFJ/aDsEwhyJbdMDr6Iacogsd0RRVxd1/CBrmQTH2FETrFIyfTxJe0c4
 q99Zf86XWK2isis17tp6EWRcnFSAE44FeB9J5JWg64VCYIG/+2kkcUMBi
 LfKB5gJc4PEiTqUkWHHhXwL2ASC2uynfX5hHqgScf9fLaUkp+MZlFAi2x
 7evZueGRHY6zb8uZE01umgnx+ssui0lr9mLaqmVsXeyKOA/aTaJoRtdO1
 Rl21B7oFRpyoNx481fA4Ubfs9wfRC6JpXq3C0HUH3D27DNfimUYTbI91b
 xjoWcdUngcWNGSk2U9UMdqyHHhTaILzQDKb0nrG1hARFAmJUctJD3Xcao
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KFJ/aDsE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1 1/3] ice: Fix double VLAN error
 when entering promisc mode
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiA+IEcsIEd1cnVjaGFyYW5YIHDDrcWhZSB2IMOadCAyNi4gMDcuIDIwMjIgdiAwNTozMyArMDAw
MDoNCj4gPiA+IA0KPiA+ID4gDQo+ID4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+
ID4gPiA+IEZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1
b3NsLm9yZz4gT24gDQo+ID4gPiA+IEJlaGFsZiBPZiBHcnplZ29yeiBTaXdpaw0KPiA+ID4gPiBT
ZW50OiBUaHVyc2RheSwgSnVseSA3LCAyMDIyIDY6NDYgUE0NCj4gPiA+ID4gVG86IGludGVsLXdp
cmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+ID4gPiA+IENjOiBTaXdpaywgR3J6ZWdvcnogPGdy
emVnb3J6LnNpd2lrQGludGVsLmNvbT4NCj4gPiA+ID4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxh
bl0gW1BBVENIIG5ldCB2MSAxLzNdIGljZTogRml4IGRvdWJsZSBWTEFOIA0KPiA+ID4gPiBlcnJv
ciB3aGVuIGVudGVyaW5nIHByb21pc2MgbW9kZQ0KPiA+ID4gPiANCj4gPiA+ID4gQXZvaWQgZW5h
Ymxpbmcgb3IgZGlzYWJsaW5nIHZsYW4gMCB3aGVuIHRyeWluZyB0byBzZXQgcHJvbWlzY3VvdXMg
DQo+ID4gPiA+IHZsYW4gbW9kZSBpZiBkb3VibGUgdmxhbiBtb2RlIGlzIGVuYWJsZWQuIFRoaXMg
Zml4IGlzIG5lZWRlZCANCj4gPiA+ID4gYmVjYXVzZSB0aGUgZHJpdmVyIHRyaWVzIHRvIGFkZCB0
aGUgdmxhbiAwIGZpbHRlciB0d2ljZSAob25jZSBmb3IgDQo+ID4gPiA+IGlubmVyIGFuZCBvbmNl
IGZvciBvdXRlcikgd2hlbiBkb3VibGUgVkxBTiBtb2RlIGlzIGVuYWJsZWQuIFRoZSANCj4gPiA+
ID4gZmlsdGVyIHByb2dyYW0gaXMgcmVqZWN0ZWQgYnkgdGhlIGZpcm13YXJlIHdoZW4gZG91Ymxl
IHZsYW4gaXMgDQo+ID4gPiA+IGVuYWJsZWQsIGJlY2F1c2UgdGhlIHByb21pc2N1b3VzIGZpbHRl
ciBvbmx5IG5lZWRzIHRvIGJlIHNldCBvbmNlLg0KPiA+ID4gPiANCj4gPiA+ID4gVGhpcyBpc3N1
ZSB3YXMgbWlzc2VkIGluIHRoZSBpbml0aWFsIGltcGxlbWVudGF0aW9uIG9mIGRvdWJsZSB2bGFu
IA0KPiA+ID4gPiBtb2RlLg0KPiA+ID4gPiANCj4gPiA+ID4gRml4ZXM6IDVlZGE4YWZkNmJjYyAo
ImljZTogQWRkIHN1cHBvcnQgZm9yIFBGL1ZGIHByb21pc2N1b3VzIA0KPiA+ID4gPiBtb2RlIikN
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogR3J6ZWdvcnogU2l3aWsgPGdyemVnb3J6LnNpd2lrQGlu
dGVsLmNvbT4NCj4gPiA+ID4gVGVzdGVkLWJ5OiBKYXJvc2xhdiBQdWxjaGFydCA8amFyb3NsYXYu
cHVsY2hhcnRAZ29vZGRhdGEuY29tPg0KPiA+ID4gPiBUZXN0ZWQtYnk6IElnb3IgUmFpdHMgPGln
b3JAZ29vZGRhdGEuY29tPg0KPiA+ID4gPiBMaW5rOg0KPiA+ID4gPiBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy9hbGwvQ0FLOGZGWjdtLQ0KPiA+ID4gPiBLUjU3TV9yWVg2eFpOMzlLODlPPUxHb29Z
a0tzdTZIS3QwQnMreDZ4UUBtYWlsLmdtYWlsLmNvbS8NCj4gPiA+ID4gLS0tDQo+ID4gPiA+ICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3N3aXRjaC5jIHwgNyArKysrKysrDQo+
ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4g
DQo+ID4gPiBJIGNvdWxkIHN0aWxsIG9ic2VydmUgdGhlIGlzc3VlIHdoZW4gdGhlIGljZSBkcml2
ZXIgaGFzIGJlZW4gcmVtb3ZlZCANCj4gPiA+IGZyb20gdGhlIHN5c3RlbSBvbmNlIGFmdGVyIGV4
ZWN1dGluZyBjcmVhdGluZyBicmlkZ2Ugb3ZlciBib25kIGFuZCANCj4gPiA+IHRoZW4gZG91Ymxl
IHZsYW4NCj4gPiANCj4gPiBIaSwNCj4gPiANCj4gPiBJcyBpdCByZWdyZXNzaW9uIGludHJvZHVj
ZWQgYnkgdGhpcyBwYXRjaCBvciB0aGlzIGZpeCBpcyBwYXJ0aWFsIGFuZCANCj4gPiBtZW50aW9u
ZWQgaXNzdWUgaXMgdW5maXhlZCByZWdyZXNzaW9uIGZyb20gcGFzdC4gSSBhc2tpbmcgYmVjYXVz
ZSANCj4gPiBwcm9taXNjIG1vZGUgaXNzdWVzIGlzIHZlcnkgcGFpbiBmb3IgdXMgYW5kIGluIHNl
Y29uZCBjYXNlIHdpbGwgYmUNCj4gPiAobWF5YmUpIGdvb2QgdG8gbW92ZSB0aGlzIGZvcndhcmQg
YW5kIG1lbnRpb25lZCBpc3N1ZSB3aWxsIGZpeCBpbiBuZXh0IHBhdGNoLg0KPiA+IA0KPiA+IE1h
bnkgdGhhbmtzLA0KPiA+IFBldHINCj4gSGksDQo+IFdlIGFyZSBjdXJyZW50bHkgaW52ZXN0aWdh
dGluZyB3aGF0IGlzIHdyb25nIHdpdGggdGhhdCAtIGl0IGlzIHBvc3NpYmxlIHRoYXQgaSBoYXZl
IHNvbWV0aGluZyBtaXNzZWQgaW4gdXBzdHJlYW1pbmcgb25lIG9mIHRoZXNlIHBhdGNoZXMuIA0K
PiBXZSBsZXQga25vdyB3aGVuIHdlIGZpbmQgd2hhdCBpcyB3cm9uZy4NCj4gDQo+IEJlc3QgUmVn
YXJkcywNCj4gR3J6ZWdvcnoNCkhpIEd1eXMsDQoNCldlIGZvdW5kIHdoYXQgaXMgd3JvbmcgLSB3
ZSBoYXZlIG5vdCBiYWNrcG9ydGVkIG9uZSBvZiB0aGUgcGF0Y2ggZnJvbSBSZWRIYXQgLSBzbyBp
IGRpZG4ndCBrbm93IHRoYXQgdGhpcyBwcm9ibGVtIGNvdWxkIGV4aXN0Lg0KU29vbiB3ZSB3aWxs
IHNlbmQgZml4IGZvciByZXBvcnRlZCBpc3N1ZXMuDQoNCkJlc3QgUmVnYXJkcywNCkdyemVnb3J6
DQo+ID4gPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiA+ID4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdA0KPiA+ID4gSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcNCj4gPiA+IGh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbg0KPg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
