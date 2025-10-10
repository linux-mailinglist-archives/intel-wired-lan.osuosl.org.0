Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AABC9BCC6B0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Oct 2025 11:45:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0403761494;
	Fri, 10 Oct 2025 09:45:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbvKCQRXqEdi; Fri, 10 Oct 2025 09:45:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72E7561490
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760089526;
	bh=ghBuoUagiPhZfdmxIERL3ek11l/1xM3PMPJAKMY0/Tc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WUF+18fzsUf0Twsm4bqYJ2gOv+G9ahJl9V7EpoXlXMluzpVyV+M770JOy2pCeXsee
	 ftw9BevLNREsJKDgDKlSjrwS1NBj3UNBkvM6aPfEMjS9iLc4TuXtNkrLTYu7/uZhol
	 4b8rQcPzY6Wb75LsCe9qfkDHENw/tK9PfP8vum2MRUwTXSkP7cWahq+CrRDuVE5Swi
	 RSHcQG7VgV65A/wwZTKJ4ua7daP+J1WaMlflmDAcqC/oLUz88ePVQPTKR4VZLTjO6b
	 JaNQvL39o/DVKf8r1KF0hxGvcxego1MgFAsVtzKKtOLWYGUlBEF5bu4TQmMPq2T7k5
	 hYy9nGBtpbJSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72E7561490;
	Fri, 10 Oct 2025 09:45:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9177514B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8260761490
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TDnul3bh95x1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Oct 2025 09:45:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 733B160D89
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 733B160D89
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 733B160D89
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Oct 2025 09:45:23 +0000 (UTC)
X-CSE-ConnectionGUID: O8Us2Iu+RWKuyHOeVMFcbQ==
X-CSE-MsgGUID: aOaj5M89QWib6fnrEj7vOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="62407778"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="62407778"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:45:23 -0700
X-CSE-ConnectionGUID: hO5Tm/ZXQRWJOB+6YwU7SA==
X-CSE-MsgGUID: UTywNQGfSoibrbPwLQas8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211891955"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:45:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:45:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 02:45:20 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:45:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IG31k1VjxvXo/yMd41SYYy8AV8PS0RldqWNJ2QcR5UdLpADwsZ1mBrrH0Ls7zHV98ZfrgrF6ynWKWsf1Ue8CVh8JRS3FyJ1igjUxg65TkPsQm41URliN0oQP3S3h2aXhHoi81fs+wfpHuwNTXOxYnVop6iM4O85ddxiDXNX2s92NRBDL1k0Tat13ubIkZwy3wkH7720SeeUJaU+tdEDEg5fSSkiLkJQRHgBMdZpN56balPnfG+CwLN7bsKNG3rCZa1c+76WVs7OO1CXx8KuFHIYDv5xg8sT72KmYT5qHOhnSrK61BFPoyxVG9mZyBhoBnK2iors8Zd/9jVOv8yFC8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ghBuoUagiPhZfdmxIERL3ek11l/1xM3PMPJAKMY0/Tc=;
 b=Rdot+GWCVEO1XGeTWvk0fNyT/OU5jstK6dYfyx1oppoDaYz+Y6ooXdxal/dRvlB5JHdsUqyIibBWg99f1C7Edkb0oH776HScTAYd20jNFsT144aHo3wmlffMKx9ac6KJ6+odexwlVSvETDcsRf6zSSkoBgxx2eGAJ0omms75p9bZ7iUrLPO5h9Meru47WHNSoYGFVz1Eli9FmeHoc6C0cYw1w4ga4+s5M9Zv53paBlhckNXPJLpF8xDIo+EO7etLSwnoG5k+iqEMOGNs3mML8hxllyzm0d73YbUfIO52qvevCFH0Czj6mYMZiIPvDHzmvfzPevU+vs5425bgPs2JrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8985.namprd11.prod.outlook.com (2603:10b6:208:575::17)
 by BL1PR11MB5953.namprd11.prod.outlook.com (2603:10b6:208:384::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 09:45:16 +0000
Received: from IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6]) by IA3PR11MB8985.namprd11.prod.outlook.com
 ([fe80::4955:174:d3ce:10e6%3]) with mapi id 15.20.9137.018; Fri, 10 Oct 2025
 09:45:16 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Schmidt, Michal"
 <mschmidt@redhat.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
CC: "Nowlin, Dan" <dan.nowlin@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: improve TCAM
 priority handling for RSS profiles
Thread-Index: AQHcJkY+VVQATGwjjU2CML6ceO/HhLS7SIFg
Date: Fri, 10 Oct 2025 09:45:16 +0000
Message-ID: <IA3PR11MB8985923833B97557AEE065BB8FEFA@IA3PR11MB8985.namprd11.prod.outlook.com>
References: <20250915133928.3308335-1-aleksandr.loktionov@intel.com>
 <20250915133928.3308335-4-aleksandr.loktionov@intel.com>
In-Reply-To: <20250915133928.3308335-4-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8985:EE_|BL1PR11MB5953:EE_
x-ms-office365-filtering-correlation-id: f49ddab6-a7b6-4f5a-a53a-08de07e1b7b4
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?eHzVS+4fV7Malomyt3t565tE+59ZU0J9OVuPKv8hZL4L6HHOnCeQpJCZzViJ?=
 =?us-ascii?Q?1qRj/GvHWhYF7rnlpaT1xkU5foZ3q6+f0oQ0pSYY6bOz8sVvaM7IGF7Jx2+1?=
 =?us-ascii?Q?gGM4EniI8+wGLcc28Qzwxtf57m5sJNImfO1cR0Fg6le7m4pFJmA1USMEzvsh?=
 =?us-ascii?Q?ivZSy+23PlA+r+w+NJmiltOre5sIpps5n74tjUkdUZW7FV9ZVX4g8piRY/zf?=
 =?us-ascii?Q?JOs+aacbXrRy+nwu9Sj8zACqgjUdDm83Y9Gn7A0KzmnYadzS3jn/nkY5A8Qn?=
 =?us-ascii?Q?mNIsOvI4DA0dmEL8L+EZ9vU3UOT/EzOhV1gxxu9uAtPAFrNyvpXN0YpvFIYL?=
 =?us-ascii?Q?QcbAO36cch1b3zRHhEcFsDaXykcPXjxCBgl3TKTMly6C9B9u/OBw6vksEiyr?=
 =?us-ascii?Q?RtRzOeWMnwuAqafwoTVy+YoCAav4HQuPnCYGI5nTmjDhbDEFHbPd9mf450I8?=
 =?us-ascii?Q?cxSW5TzSbffNgnzJpaUuJxPt6oRQanhqn4b5qQDSofzI7zxSQ2zEzTAKvyO2?=
 =?us-ascii?Q?gBeQg0z4YthhkdOItf0RJOHbMYFddNFAxhFSFuldLGz87mVjgzEJh1A/QGlZ?=
 =?us-ascii?Q?HYK3bTf603wtcNZYf68aTUNwFJY//WuToUyuYL5PVJgbUZVIQrqF4OujGk2z?=
 =?us-ascii?Q?bwzhQCrPZHTEiPRikCukhQwyZ7yx0FYjveaoh7thZgMtjj53IJeye8E9Ockx?=
 =?us-ascii?Q?3W8LrEHiWn7Hdfa7bFq1eEmoSLVZ/oQTO4NP6c6/aGeTdZuP0fQhNdRyGBFt?=
 =?us-ascii?Q?I8/wefz8pMHzL4MdRSk99fMwEqII7kg+MaZZYtgjy5jKhZYF0zCCws/cHCgY?=
 =?us-ascii?Q?aW9aFbXO2DS09ktR4znUKRjUi43dXCMc/b6h9LAWdOD6+GaUQC+85d9WNX/d?=
 =?us-ascii?Q?7MmakRe8AX8uT1MLAEPr0/uhwzY4gbJR2ONTRT+PvwyBrq0PjNvGuK8yvT6N?=
 =?us-ascii?Q?GI/KQ0g5gofSNqxL4kofqc5udrxhNOOYVoKuSXHAo1aHhjKRr12LqNCa+z0v?=
 =?us-ascii?Q?gaoOk1kayHELhWy0XD6ssZRSSy6D8n0QA9Z69jOvZmC3csrKzhukhM9gtJYZ?=
 =?us-ascii?Q?/Z08L7k+fpID4nWVlzahOi3jQdQugysY4aMBDu5kxwuzbE3sARwb6KQLZ/+b?=
 =?us-ascii?Q?cFCKgBh73uMN4OUKsehdux3IQqBFXECABxOLR0BCo6KDnEtm3KVLV7sJSgyd?=
 =?us-ascii?Q?mzUEqjQWx7S/3KIn8D3f3Fv5EZzSqPUkNfCaVnOAI2c391upRK+B9MLkeBMh?=
 =?us-ascii?Q?UKKSf1FAtc+dHrXoYc9lYCXCYggg+4C2RS92gV8eEaVUWwhGdjwaZIOmktEc?=
 =?us-ascii?Q?+Y5NSuuvWsgkM6/7KUh9gqrhWVXuQjPFyPhijTe5u0AueqdMPLMuzhJehVaE?=
 =?us-ascii?Q?eKdlo0Fp7VKNCH3T9Hsvk0OguFwXpEOJfqN6jDYBpv9bANwYfqA+DLR5VBkj?=
 =?us-ascii?Q?cW2E0eoNQkPoNxLkjPJwoBfGb/QavmLhjpeAEjtF5YeFnDIkxDAd117qtKUH?=
 =?us-ascii?Q?dXmBE9ZkalxJx6yIwZr/xeinBDXDxTlmjISZuEPKjf+fPmvGTiAr/siIRQ?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8985.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DHoYoDORgT7tv9MlEJVQt20toxHixraBtpjgLyycQGQNN92IJSHmfk/+3oXY?=
 =?us-ascii?Q?pDsWiEcUYQ5mD85+qQCfB5XEhhiEFA2dRBs7dEsfS6lewrpAMbrHnwu8uhY6?=
 =?us-ascii?Q?VRrVAXL94J1I3HlG1XbzTG+RPygnSk23IKq43Qo1zB0YGkeRkkIA4xN/D1XG?=
 =?us-ascii?Q?vwvELL4Z7o6NkKVqVmvWy8jGRjsmkGypYpYulSOZ3xponiyV8OwJhOHh/9dG?=
 =?us-ascii?Q?QilWWenTNxNBBC6v2HXmvduFQYUwcxyxBIX4LACfrCVie0joGjly2dEIFvzH?=
 =?us-ascii?Q?oi7CkFsE9yg61m9q/V3e1o02RXQOb06+tNL10CkIajEksgXXLIazMqF6nt7h?=
 =?us-ascii?Q?v/Lf9jLnIKtd7zSCZy1vs3dJB/3Twrslt5A3pZ8l/Gye36UuSUz9M0XzJ2FX?=
 =?us-ascii?Q?VNYySO7YnX712nUjserVbS0hB1GUBqJJ9Upb924oXGR1viQXOMEIs5W4ap3b?=
 =?us-ascii?Q?sx7K8Fl4jZ5w76Kz9NdJYRKvUl+Ji/rc2CAamh5P4WLFjGIOMqVNaokI56lv?=
 =?us-ascii?Q?Ymkm2cfEI97kBkQGoaXkb63GmC9pUv9eGqKFh3Ppqj7BS8hjs01uPpq0VCfZ?=
 =?us-ascii?Q?7WSrfdaBk7wHiyxdMbz+oRrlTorzh/o75oxympePhWQ5OaPULjoBdGjgI2N3?=
 =?us-ascii?Q?7iVhNDWW4dNM/mMB6TwjzIhzXjBRR5Zd7jwEyQg15an5UpAo/+npr6vUigzJ?=
 =?us-ascii?Q?FX7RL/C9+j5IcfBQN3e1uRbOyWqZJSF+pYwiyb3pHxrnmZkfyshBlg+QgjXg?=
 =?us-ascii?Q?ZJUf09NdW//4bBSYbjRpESJhrPEL4v0U1deFH4V2A/ioz5ADsAq51rgu5K/c?=
 =?us-ascii?Q?oWBCGryUMbRheGmVSPVJcn7ynDzO9RXK+9rBm7vNGdGwUajT69a50qRLF4eV?=
 =?us-ascii?Q?rFVbPm0VklGnhGRAnzmXU0i2DcYRtFOQeFSITFco0z9pfWSiRjcBYaVIfoJe?=
 =?us-ascii?Q?f9SQXCuDffW9WzmUdkxNij4pqh6jO/OSD4epc2Htj/bxxUb4fhAKOXJmxazt?=
 =?us-ascii?Q?lbRkYz01aEZ6eCG9UWlYHzx9HCxEil73qJo3Am5C3H6I4KzYMFe4+dQPA7KX?=
 =?us-ascii?Q?ReKQNf+ruaMXF5w+/1knCNk8SCP+k7A0AX64/zW1hg1yIcA2QATqyOS34lxG?=
 =?us-ascii?Q?2HWSDVc6dWuO+VZl7VO+WJa3b8zhLez7UoL5pjnHgmldHOPm6WmCgLXJIWtV?=
 =?us-ascii?Q?4Rt3Na+o5zuGD3ezoZqBpLdxZac9DEgaq4Gt+B1BVLbxbRw7+wLx1PvjIraS?=
 =?us-ascii?Q?vrXheGc5BJUTjiWURYEEj6DDi/wY44LLjsZeX1Z6IPT1z0CugNY/6yVahPt0?=
 =?us-ascii?Q?4dmsv+rbjyn1cbS7lo0GL4ti7xHR6xfXWAVxyR9pnQHjrjHkI5Rz2DsYlXJb?=
 =?us-ascii?Q?nDBUKfp2vTFZuusCsmZkuv+yWvXpG00OweDE+iVmPUv/Zjw5ReoJj4ylpuCy?=
 =?us-ascii?Q?poLEDh7qT0aM2ceudTjP2+aE06P0hxNOPWqrYBnu8V2cE+1wexn/hSFvU1jV?=
 =?us-ascii?Q?6Q05FB6OX1T+Q3Bfxg11qM4exbX73d/0V8EKd31v9WtyErqzXw0O5MvnjxVa?=
 =?us-ascii?Q?bIMhu0bcCQJD9jdIyqPVdlPQLcjTB/dqA1kJYp+zx1bcwEKu2qrbbWcNQb2r?=
 =?us-ascii?Q?CQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8985.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f49ddab6-a7b6-4f5a-a53a-08de07e1b7b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 09:45:16.3822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0FojrjFBNX/gXzvh7rTcnhImXmsWtlYjibJ5HIn62qKHl1V7oUFDGWMqEnpijih/fr3tVYpY8Edt8ikfXQxFv0mhp72tsB32NdrEokJv0Xg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5953
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760089523; x=1791625523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UeFY9Z1Pql47cqFNFPPwFNuH6Kc4KKG+X7jEL6aYcbA=;
 b=e2tSwDfg3quDhLxB3VdqmjjiTNahgmxhJruiHvYk42S+tJ4YNbKE8mle
 yY3f3AbN1C1L9ysYSPAuuT/GGVw4b9cWuM+sLWw/8VDXZCIjDqieEo1DP
 Zr34tq3Ew1ZAMmjW66A4oPQ5xcl88bJJwp3rvy/Ui4wM/umxFNMlyQBgz
 sf4/RRAk+GGPa1jkQuuXcMCLBclXr4rwClpPJYFr3sCE/pucxdcJMQUZh
 ds7N1u1vcbnbUVNHYwb1puIslcqPvZYJ5faX2Grj/7u7BmEAcV3ozq/jb
 e4JL0dZpaAl8vcWnplf3OlpAIGrNlVYMh1d2PbXyDt2xViKEopIcSRDTY
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e2tSwDfg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: improve TCAM
 priority handling for RSS profiles
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Aleksandr Loktionov
> Sent: Monday, September 15, 2025 3:39 PM
> To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Schmidt, Mi=
chal
> <mschmidt@redhat.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: Nowlin, Dan <dan.nowlin@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Simon Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 3/5] ice: improve TCAM prio=
rity
> handling for RSS profiles
>=20
> Enhance TCAM priority logic to avoid conflicts between RSS profiles with
> overlapping PTGs and attributes.
>=20
> Track used PTG and attribute combinations.
> Ensure higher-priority profiles override lower ones.
> Add helper for setting TCAM flags and masks.
>=20
> Ensure RSS rule consistency and prevent unintended matches.
>=20
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 91 ++++++++++++++++---
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  1 +
>  2 files changed, 78 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> index 363ae79..fc94e18 100644
> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
> @@ -3581,6 +3581,20 @@ ice_move_vsi(struct ice_hw *hw, enum ice_block
> blk, u16 vsi, u16 vsig,


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


