Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC0F426091
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Oct 2021 01:39:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02372842CA;
	Thu,  7 Oct 2021 23:39:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 90ktQCqMZsmq; Thu,  7 Oct 2021 23:39:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCDE2842AE;
	Thu,  7 Oct 2021 23:39:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3B481BF321
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 23:38:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CBB29842AE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 23:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbmhkJmX8_Sc for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Oct 2021 23:38:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C812480BE9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Oct 2021 23:38:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="289892366"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="289892366"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 16:38:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="522780909"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 07 Oct 2021 16:38:54 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 7 Oct 2021 16:38:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 7 Oct 2021 16:38:54 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 7 Oct 2021 16:38:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EN8HxDhAoRgDuhlk5DZM8fHf+WOvH6qDrRHu0aj8aikmaXj2ISiWcBqC9Z7/32AI5YxQ7XqnlUO7bqUu3SvMl32bvmAclDszr1HlX0AEdwVemBhRLXRGDAmO8G9AI6/H1P4+PW7jXnQBRYdAqtb0lIyoL7x0u34/IaDDpeXyBuWNcn2282fD5yt2ZXJoR3zwKD3b3uebCf0VD/zdR2GRiMldKR+bJBsKMjUoZRyl96oi/AEOKUqyppogb8y9CPPYeTR1fbg831YlDkJJsd66HwM1Fs6Eu309AeaMUwQESu2iHbiobo0Q4kxBoRZMbRyo5mDj8Oiks5LnGx0Wxe5Zrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yY6lSajakksGoin4xhIZBxZvytNs50JsAXoiFWo57Do=;
 b=WJiNFRif3MC5Kjwd0gKd20/ygmSRm6DXtAyVbYJHL6h5E78FutLj7bFbNpmpwrTonFWsN47ytdKiacSEDX7syVqdEg9poeWR7drwkHvenRpKZRD+0OLU5RAr41wPIluAO1R3CLpwKwXVdcsC7+lphLVRPEEU/kET6syihJKaNGlyLp0CoUSWBEJgDfA+nRiiBSnGm0V22v8iNLh1ezBupsa4z+li/cw8ExTGMqB3gfroZiyIsaCG42ynSr4W5VGLxbSv8a/ReOoiYo45fNyXJ+VR5rQQx6IwJiJQUNvDYigBR9ovvQwTheYVI90XIczVPx3THxutisDt19yJ9wKYdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yY6lSajakksGoin4xhIZBxZvytNs50JsAXoiFWo57Do=;
 b=QutoKLvYZTpfRKw2ar088XC6Zu0CtBA0S5YhttnRP8avft8sNj79Hd8zq9/mBiGGiZnX5HLOLH+kztPtmHlYs+PU/HMhaXjEuY66CyRrf9HZ86IGmCN1RKWNzlrxxPAMKgDVD2wyzjqVFSd2ep35vEdBDEhF+pZUs6gvh4+z3Vc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3136.namprd11.prod.outlook.com (2603:10b6:805:da::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.22; Thu, 7 Oct
 2021 23:38:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 23:38:51 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
Thread-Index: AQHXu3rG+hAdghphAkuWC2iK4UTUkqvIMXeA
Date: Thu, 7 Oct 2021 23:38:50 +0000
Message-ID: <5806d8bccb949333e39f432bf162956d9797ff5f.camel@intel.com>
References: <20211007125611.50277-1-michal.maloszewski@intel.com>
In-Reply-To: <20211007125611.50277-1-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7e275bb5-7e03-4e3b-c9f8-08d989eb9df5
x-ms-traffictypediagnostic: SN6PR11MB3136:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB313655799EF73DE6C04320C0C6B19@SN6PR11MB3136.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CtIsWqqbwx4H+i66DAGCJqaBxkh2D5638NJESjPbyqV+B3Alb7hTyrBOLMdx3tT6TPslqt34GNeUn3u/5541apM74qOzjGaUVHFKiBHcYQ28OpqskH1Aabhpp57ogIWey3m8kYn31UB/Tvcmr2bdFos7Za5DYCcBCVby0ZPNNa/NX01AKBgKp0y7xjDVDB/0RuGPHe96JAGJzX3rXRQTheB1bCTCaADagooKa0Xo8Ns0lhhN1d2IvNBsvYF9MFOu2pzVwPpGHQzdc22LdQLyft3SZ3n8o8WNirmYFUkVTyurtS3Mnyh7fVbvyribTr3dtMnpYwTu0D3hZPYo4vFokR9V+lxRk7G9cKQezI8eCWuYSYXPPNLjdd0tp/Z6Hs635h1tYkBBQv/lrWjmt1ciMUKRI4wXO+1+CFzTnYwCL1UzAzF6tue44x46ssREbadGWBKZzXS7PMGALrWacvdaBXSG+OUP3upvtggvnm805EC+/8Y2Jj8GcMBu3aKfrJoEGlfwHZFFzVfpxkFTh+W7uRYZ5hw3dWWMsOOTFsei3Hr33DTeTMvdHLfMAgxrpAdC0mN0g0dHLstOK2e9/kegQqWeviyu/DxMIuyz6wCimJ74pxWhaT+dNX1SQesrEdNI1XmeCaviceUPMyRBz6Aw2OIkSgLOBVm4vsd0Nb4BZvRbyeqTKpteUA03ipBKZGNHijReaWcFfTQIPbbYXCJEORr3XtkVmtPWZctzsK+duPmD244N43smWaT1T1PTqoR/HWM5RDZbMbNR4Lo1YEhaITEbYebqTFuRBAN7TkaRKbPHI+RHBfpXxmHUKUzxogVKrgX2wiyeU7wgychthv25zw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(36756003)(8676002)(91956017)(6512007)(2616005)(5660300002)(26005)(64756008)(71200400001)(186003)(66446008)(66476007)(66556008)(316002)(66946007)(4326008)(76116006)(107886003)(83380400001)(6486002)(2906002)(38070700005)(8936002)(38100700002)(122000001)(966005)(15650500001)(110136005)(508600001)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amRRN1JxUTFKY1F4M3gxbitheEhUUG4vL1RpUno0UkJOZkxVUWY1Nk8xc2o2?=
 =?utf-8?B?UU5QU3B5dGNpVktldGZCY0QyNi9SUFlRMEFLOGhWRjE3T3o1dkptdlMxUHNY?=
 =?utf-8?B?Q3R1cFRwSElhZTVNVE1Sc0t4NlliSVlsRkN6Q3lUcG5BV0dUOUZkY25XcTZT?=
 =?utf-8?B?UlUxcEM3WFZrMFNBQ3REaEJTMWdQVVFidWYvc3hXUUpyamZaSjRpSWNaeW5U?=
 =?utf-8?B?QjcyYXZyRzhMeFErcllzbTRkYTVzRjNOVUJmb29aME1HU1Zoa2YzOXh3dmRZ?=
 =?utf-8?B?T2JWckpPTnpEaDBrNk1yQVhMSGNERGc4dXpBM3pTUTJwQlZ5UHhBU05HM21u?=
 =?utf-8?B?aWI4TE9mZFV1b2hpL2JsNmNxajNWbmtnYVZ0TjVrTDZ0OWZ5cXRUTUFWNEJz?=
 =?utf-8?B?cGw3dExBM085ZzRWbmpHK3JZbG5Rb082dCs5R2Qrb3FGMkYra3l0SlRBUjY3?=
 =?utf-8?B?SGNXVUNsMmQ0ZUN0UjFKNi9XRGlYWTFhVmpVNHpYVzlHenNoVGlFSFZGYmZI?=
 =?utf-8?B?cFlxcFc5NTZzR0UvWUcveS9PVFgxSXhJN0dKM0wxTWRTRDBGMVZ2eWNmeHd0?=
 =?utf-8?B?T3A0eHJaVDhlU0lDZFVSNGQvYkY5bmx1NCtMalB2WXV3M0FGQmIyTVhTdG40?=
 =?utf-8?B?WFpXQmt5ZzlSUUVoRlRVZ3diYnY2UFo2dVg5cWt6WEQ0bDcrZVBCMHp0aDRw?=
 =?utf-8?B?WWlQTEorOTlUUnNGVStrSnZXVUE3eTQ3dXMzU2dMZnNqK0lsQkU1VTJvSytK?=
 =?utf-8?B?Y090YjlxVWRWaFdKbm9KYkI2ZTZFczB6TEZiSWpQbVZoa3N3dUp6dDlaS2Rj?=
 =?utf-8?B?VmRMRnNVRGxkbktGUXdjRzNBQzRkY2RNeldyNEk0aUxjMU1PYmhpSm0xUEFz?=
 =?utf-8?B?MERwek1wL3VrdEVKZ0REMFlnblRkZHFnMXEzcE9iejNmNmtVUzNpMW4zZTdy?=
 =?utf-8?B?bmtVeWdwc0RUOGVZeWVUdHI2RndnNFBueU11K0g2cDNEWTUvU1haSG5ISit4?=
 =?utf-8?B?M1JKMUVOQmdEV3BBaTkyT0ppTks4TVk4MVc4dnVQbE81Vk12Zk1kRi9HV1RE?=
 =?utf-8?B?N1o3U1dEYXpmTldDM09Vc1pFeTVHSWVCUkE2WmQrMThJdEJ1UmFwZlZ2ckxy?=
 =?utf-8?B?SndZUTBxM2t5eC8xWWwybE5YVTQvaUtzUzhtY2ZTTmpvYmZkQ3VYQlVmWjdy?=
 =?utf-8?B?Vm50TnJGdUllVE4wWjdtWjY5NTYvWi9iVCszanFUa0xsWElSSWhYZ0EySisy?=
 =?utf-8?B?elh6MXJWQlhWTmQwTjBEYmhNRnV6eFVkQTc4Zll3VitYbStUNHZrOXByOTNL?=
 =?utf-8?B?M3lTVEdJcUtrMzk5bjQvaXk2UWFnUlZCN2RBUmNSZWJsUFN3d01rdHNTY3RM?=
 =?utf-8?B?RlVoc2tYY3plWXdOUUFVVXBiOWFVUFVUSDV1RGFhZ084c3BLb3NVUjFYRjBH?=
 =?utf-8?B?ZUFYMlBaQW1xVExNS0NCNnc4bG5PUDBFQVJHeTZUL0JSaHdlMWEwSURTOHZL?=
 =?utf-8?B?a1ViNlB2c0pFVVBQMDFZRE9oV2htYThlbEtZRzl0L2V2cmt1NUZDTGZxOThD?=
 =?utf-8?B?cXFRcEE2VEwxd0hwMU9CNmNDNFVhZmRNZ1dPZ1k4M3RnYU5vZG0vME1CSTFK?=
 =?utf-8?B?UWlsMGhhalFPVFVsQzhLSHFQNXFmbkZuOTVycENIZXl2MTRYK1VDVWlRazdY?=
 =?utf-8?B?UTYyNHFPMUdzRlJzYXltY1R0TVgxOTNJekVIdHorM1dVazFJM1grbDZ3d2wr?=
 =?utf-8?Q?cddOcCk0j0YNzUaDMM98y8zkFd6e3N96pwEzsxV?=
Content-ID: <613D33F5F690FD4F80253D9A137A04F0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e275bb5-7e03-4e3b-c9f8-08d989eb9df5
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 23:38:50.9297 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iF/dLsm8DcnIkP+OCg1e5f8nOHRIQk0Yk+/szErCKrqOumqUDoQTLqEWIAE/JqpAnGiC8gH31F9IMflJhsN/4nXoS7U2bceR7UuBnuiKwPk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3136
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix handling of vlan
 strip virtual channel messages
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDEyOjU2ICswMDAwLCBNaWNoYWwgTWFsb3N6ZXdza2kgd3Jv
dGU6Cj4gTW9kaWZ5IG5ldGRldi0+ZmVhdHVyZXMgZm9yIHZsYW4gc3RyaXBwaW5nIGJhc2VkIG9u
IHZpcnR1YWwKPiBjaGFubmVsIG1lc3NhZ2VzIHJlY2VpdmVkIGZyb20gdGhlIFBGLiBDaGFuZ2Ug
aXMgbmVlZGVkCj4gdG8gc3luY2hyb25pemUgdmxhbiBzdHJpcCBzdGF0dXMgYmV0d2VlbiBQRiBz
eXNmcyBhbmQgaWF2ZiBldGh0b29sLgoKClRoaXMgcGF0Y2ggZG9lc24ndCBhcHBseS4KCj4gRml4
ZXM6IGlhdmY6IDEyOWNmODllNTg1NjcgKCJyZW5hbWUgZnVuY3Rpb25zIGFuZCBzdHJ1Y3RzIHRv
IG5ldwo+IG5hbWUiKQoKVGhlIEZpeGVzIHRhZyBpcyBpbmNvcnJlY3QuIEl0IHNob3VsZCBsb29r
IGxpa2UgdGhpczoKCkZpeGVzOiA1NGE0ZjAyMzlmMmUgKCJLVk06IE1NVTogbWFrZSBrdm1fbW11
X3phcF9wYWdlKCkgcmV0dXJuIHRoZQpudW1iZXIgb2YgcGFnZXMgaXQgYWN0dWFsbHkgZnJlZWQi
KQoKaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvaHRtbC9sYXRlc3QvcHJvY2Vzcy9zdWJtaXR0
aW5nLQpwYXRjaGVzLmh0bWwjdXNpbmctcmVwb3J0ZWQtYnktdGVzdGVkLWJ5LXJldmlld2VkLWJ5
LXN1Z2dlc3RlZC1ieS1hbmQtCmZpeGVzCgo+IFNpZ25lZC1vZmYtYnk6IE5vcmJlcnQgQ2lvc2Vr
IDxub3JiZXJ0eC5jaW9zZWtAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBNYWxv
c3pld3NraSA8bWljaGFsLm1hbG9zemV3c2tpQGludGVsLmNvbT4KPiAtLS0KPiDCoC4uLi9uZXQv
ZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3ZpcnRjaG5sLmPCoMKgIHwgNDgKPiArKysrKysrKysr
KysrKysrKystCj4gwqAxIGZpbGUgY2hhbmdlZCwgNDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lh
dmZfdmlydGNobmwuYwo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX3Zp
cnRjaG5sLmMKPiBpbmRleCA5YzEyODQ2MmUuLjhlMThhZTBiNSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfdmlydGNobmwuYwo+ICsrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2Zl92aXJ0Y2hubC5jCj4gQEAgLTE0NTYsNiAr
MTQ1NiwyMiBAQCB2b2lkIGlhdmZfcmVxdWVzdF9yZXNldChzdHJ1Y3QgaWF2Zl9hZGFwdGVyCj4g
KmFkYXB0ZXIpCj4gwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPmN1cnJlbnRfb3AgPSBWSVJUQ0hO
TF9PUF9VTktOT1dOOwo+IMKgfQo+IMKgCj4gKy8qKgo+ICsgKiBpYXZmX25ldGRldl9mZWF0dXJl
c192bGFuX3N0cmlwX3NldAo+ICsgKiBAbmV0ZGV2OiBwdHIgdG8gbmV0ZGV2IGJlaW5nIGFkanVz
dGVkCj4gKyAqIEBlbmFibGU6IGVuYWJsZSBvciBkaXNhYmxlIHZsYW4gc3RyaXAKPiArICoKPiAr
ICogSGVscGVyIGZ1bmN0aW9uIHRvIGNoYW5nZSB2bGFuIHN0cmlwIHN0YXR1cyBpbiBuZXRkZXYt
PmZlYXR1cmVzLgo+ICsgKiovCj4gK3N0YXRpYyB2b2lkIGlhdmZfbmV0ZGV2X2ZlYXR1cmVzX3Zs
YW5fc3RyaXBfc2V0KHN0cnVjdCBuZXRfZGV2aWNlCj4gKm5ldGRldiwKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IGJvb2wgZW5hYmxlKQo+ICt7Cj4gK8KgwqDCoMKg
wqDCoMKgaWYgKGVuYWJsZSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBuZXRkZXYtPmZlYXR1
cmVzIHw9IE5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYIHwKPiBORVRJRl9GX0hXX1ZMQU5fUlg7Cj4g
K8KgwqDCoMKgwqDCoMKgZWxzZQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIG5ldGRldi0+ZmVh
dHVyZXMgJj0gfk5FVElGX0ZfSFdfVkxBTl9DVEFHX1JYICYKPiB+TkVUSUZfRl9IV19WTEFOX1JY
Owo+ICt9Cj4gKwo+IMKgLyoqCj4gwqAgKiBpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb24KPiDCoCAq
IEBhZGFwdGVyOiBhZGFwdGVyIHN0cnVjdHVyZQo+IEBAIC0xNjc5LDggKzE2OTUsMjIgQEAgdm9p
ZCBpYXZmX3ZpcnRjaG5sX2NvbXBsZXRpb24oc3RydWN0Cj4gaWF2Zl9hZGFwdGVyICphZGFwdGVy
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0KPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfRU5BQkxFX1ZM
QU5fU1RSSVBQSU5HOgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRldiwKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkNoYW5naW5nIFZM
QU4gU3RyaXBwaW5nIGlzIG5vdAo+IGFsbG93ZWQgd2hlbiBQb3J0IFZMQU4gaXMgY29uZmlndXJl
ZFxuIik7CgpzcGxpdHRpbmcgdGhpcyBsaW5lIGlzbid0IG5lZWRlZAoKPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBWbGFuIHN0cmlwcGluZyBjb3VsZCBub3Qg
YmUgZW5hYmxlZCBieQo+IGV0aHRvb2wuCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKiBEaXNhYmxlIGl0IGluIG5ldGRldi0+ZmVhdHVyZXMuCj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlhdmZfbmV0ZGV2X2ZlYXR1
cmVzX3ZsYW5fc3RyaXBfc2V0KG5ldGRldiwKPiBmYWxzZSk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGNhc2UgVklSVENITkxfT1BfRElTQUJMRV9WTEFOX1NUUklQUElORzoKPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl93YXJuKCZh
ZGFwdGVyLT5wZGV2LT5kZXYsICJDaGFuZ2luZyBWTEFOCj4gU3RyaXBwaW5nIGlzIG5vdCBhbGxv
d2VkIHdoZW4gUG9ydCBWTEFOIGlzIGNvbmZpZ3VyZWRcbiIpOwo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGV2X3dhcm4oJmFkYXB0ZXItPnBkZXYtPmRl
diwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgIkNoYW5naW5nIFZMQU4gU3RyaXBwaW5nIGlzIG5vdAo+IGFsbG93ZWQgd2hl
biBQb3J0IFZMQU4gaXMgY29uZmlndXJlZFxuIik7CgpXaHkgdGhlIGNoYW5nZT8gU3RyaW5ncyBj
YW4gYmUgbG9uZyBsaW5lCgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgLyoKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAqIFZsYW4gc3RyaXBwaW5nIGNvdWxkIG5vdCBiZSBkaXNhYmxlZCBieQo+IGV0aHRvb2wu
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBFbmFi
bGUgaXQgaW4gbmV0ZGV2LT5mZWF0dXJlcy4KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWF2Zl9uZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQobmV0ZGV2
LAo+IHRydWUpOwoKVGhpcyBjb21tZW50IHN0eWxlIGlzIGluY29ycmVjdCBmb3IgbmV0ZGV2IHBh
dGNoZXMuCgpGb3IgZmlsZXMgaW4gbmV0LyBhbmQgZHJpdmVycy9uZXQvIHRoZSBwcmVmZXJyZWQg
c3R5bGUgZm9yIGxvbmcgKG11bHRpLQpsaW5lKSBjb21tZW50cyBpcyBhIGxpdHRsZSBkaWZmZXJl
bnQuCgovKiBUaGUgcHJlZmVycmVkIGNvbW1lbnQgc3R5bGUgZm9yIGZpbGVzIGluIG5ldC8gYW5k
IGRyaXZlcnMvbmV0CiAqIGxvb2tzIGxpa2UgdGhpcy4KICoKICogSXQgaXMgbmVhcmx5IHRoZSBz
YW1lIGFzIHRoZSBnZW5lcmFsbHkgcHJlZmVycmVkIGNvbW1lbnQgc3R5bGUsCiAqIGJ1dCB0aGVy
ZSBpcyBubyBpbml0aWFsIGFsbW9zdC1ibGFuayBsaW5lLgogKi8KCmh0dHBzOi8vd3d3Lmtlcm5l
bC5vcmcvZG9jL2h0bWwvbGF0ZXN0L3Byb2Nlc3MvY29kaW5nLXN0eWxlLmh0bWwKCj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJlYWs7Cj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRldl9lcnIoJmFkYXB0ZXItPnBkZXYtPmRldiwg
IlBGIHJldHVybmVkCj4gZXJyb3IgJWQgKCVzKSB0byBvdXIgcmVxdWVzdCAlZFxuIiwKPiBAQCAt
MTg5Nyw2ICsxOTI3LDIyIEBAIHZvaWQgaWF2Zl92aXJ0Y2hubF9jb21wbGV0aW9uKHN0cnVjdAo+
IGlhdmZfYWRhcHRlciAqYWRhcHRlciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHNwaW5fdW5sb2NrX2JoKCZhZGFwdGVyLT5hZHZfcnNzX2xvY2spOwo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgfQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYnJl
YWs7Cj4gK8KgwqDCoMKgwqDCoMKgY2FzZSBWSVJUQ0hOTF9PUF9FTkFCTEVfVkxBTl9TVFJJUFBJ
Tkc6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qCj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAqIEdvdCBpbmZvcm1hdGlvbiB0aGF0IFBGIGVuYWJsZWQgdmxhbiBz
dHJpcCBvbiB0aGlzCj4gVkYuCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIFVw
ZGF0ZSBuZXRkZXYtPmZlYXR1cmVzIGlmIG5lZWRlZCB0byBiZSBpbiBzeW5jCj4gd2l0aCBldGh0
b29sLgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KCmRpdHRvIGZvciBjb21t
ZW50IHN0eWxlCgo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIXZfcmV0dmFs
KQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWF2Zl9u
ZXRkZXZfZmVhdHVyZXNfdmxhbl9zdHJpcF9zZXQobmV0ZGV2LAo+IHRydWUpOwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVhazsKPiArwqDCoMKgwqDCoMKgwqBjYXNlIFZJUlRD
SE5MX09QX0RJU0FCTEVfVkxBTl9TVFJJUFBJTkc6Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoC8qCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIEdvdCBpbmZvcm1h
dGlvbiB0aGF0IFBGIGRpc2FibGVkIHZsYW4gc3RyaXAgb24KPiB0aGlzIFZGLgo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBVcGRhdGUgbmV0ZGV2LT5mZWF0dXJlcyBpZiBuZWVk
ZWQgdG8gYmUgaW4gc3luYwo+IHdpdGggZXRodG9vbC4KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICovCgpkaXR0byBmb3IgY29tbWVudCBzdHlsZQoKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgaWYgKCF2X3JldHZhbCkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlhdmZfbmV0ZGV2X2ZlYXR1cmVzX3ZsYW5fc3RyaXBfc2V0
KG5ldGRldiwKPiBmYWxzZSk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFr
Owo+IMKgwqDCoMKgwqDCoMKgwqBkZWZhdWx0Ogo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKGFkYXB0ZXItPmN1cnJlbnRfb3AgJiYgKHZfb3Bjb2RlICE9IGFkYXB0ZXItCj4g
PmN1cnJlbnRfb3ApKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGRldl9kYmcoJmFkYXB0ZXItPnBkZXYtPmRldiwgIkV4cGVjdGVkCj4gcmVzcG9uc2Ug
JWQgZnJvbSBQRiwgcmVjZWl2ZWQgJWRcbiIsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdp
cmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLXdpcmVkLWxhbgo=
