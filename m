Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD40991D941
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 09:43:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0446281570;
	Mon,  1 Jul 2024 07:43:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cqO-3S5qgDNI; Mon,  1 Jul 2024 07:43:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 98F2C814C1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719819789;
	bh=qbU+ixCKQW3/armGz2N/vgYV4VRCXCE27cHug/X4BU0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ddPvq8xxgtQgY9fgfsDuMnEHZRm3vtfZQatNu0nZfslO4QQYwTBF3WuBT5ob42NLE
	 obZoCl6uI8Tnh9sJQtcOnE4z9CDgzc1N6D6mHCv9Kni1J0Kltoko3JvUpYr4520yYJ
	 YwwTw6OZhnPSBY4S72TuMY1L/ZjNicWFFyWzR8uPvfeMlR5RK3xVs4Y+ZTXbLoe5z3
	 Xp6ZmwIqUyp8gA/AdFvJI23iq6s6ijX/PrJC9lmRxnglWM84OTF+FZJrY2o+1/sx5H
	 RcGNlWkKriy1iq4qer7LJJOewud0Orj0xnQdhn+rA7nbV8Cvvy8fdZOD81qRKa0kpz
	 8yLObG4cPa4pQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98F2C814C1;
	Mon,  1 Jul 2024 07:43:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4BF061BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:43:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 334EF8149D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:43:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WJiEtwyZ6YPv for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 07:43:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 302C28148D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 302C28148D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 302C28148D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:43:05 +0000 (UTC)
X-CSE-ConnectionGUID: 7g5KFeOaTRKGY9BjIc6ldA==
X-CSE-MsgGUID: muePCZqrQWyYvVNfvId51g==
X-IronPort-AV: E=McAfee;i="6700,10204,11119"; a="28325803"
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="28325803"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 00:43:05 -0700
X-CSE-ConnectionGUID: 5Ss5WC4tTPKbgVfh+h9ikQ==
X-CSE-MsgGUID: AjyXJmLqQxK28pU5qo3DgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,175,1716274800"; d="scan'208";a="46100919"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 00:43:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 00:43:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 00:43:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 00:43:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DfSBxm0AK83eeE38YJBjOLHB57QY+vKSmjTL6rbAIkgzFPQxxhBmTzF/n1rU6ofJ7hJoPL3MxyVdDa1EvY3Bevht0xospWV9pGjilcvJEHmXM7xI/uvJkZz9poipDuiL4YtBN47IfhOBn5eNUqEArpqm7KtAq1mHuG6DT69DOAAvoWTRdscveaUF5lU72QlKE2qTS7jgwyNldkp2D7x7VZ6cawhjMS2I4dea7KOz9JS0HGCFOdah1ZMfkhI+/+YQWANhEAjywuvTdFSgrGQxDaDYdsCHMm+JAhcwiyO44Wp1DP20RAQRGyjQytrPLQDEKhIA1HW+Iv4PSvNcSUYXyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qbU+ixCKQW3/armGz2N/vgYV4VRCXCE27cHug/X4BU0=;
 b=M5hL1ztR3YT5Wh8m7bSDJrHsGr4A9wfyTmJbRIEEuYVLKeQA/xK4bEHRq1byHpKW5dnqE8AYiClSK8kk+YHbQRTO5MSoj0qFP6+nyl3d34xNeNE9+U4ZObHZu7GUedsH7e1N8x84KvRSJDMzz94qd56NZFDbLbqkfRlHLjDqX+jXluKgQz4844SAp/KHygf2EiWSP3vR60Ow7/9oF0+vKFYmH9AmDQGvSrAGXgCsJ3nlXykSb6c/9aYzl94Cddyp3/nRV4snB2D5RWbrZ4vxe8Gq+KKlxEqlZMvJCOdoqrONurZjLrEPkHKHEHElEnigU9ETxMSwCFt2uzC8fKdRag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by MW3PR11MB4649.namprd11.prod.outlook.com (2603:10b6:303:5b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.26; Mon, 1 Jul
 2024 07:43:01 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::b615:4475:b6d7:8bc5%5]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 07:43:01 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4] ice: Add support for
 devlink local_forwarding param.
Thread-Index: AQHauMfwHtP951j1NkygUpeGdFlaQbHhoumQ
Date: Mon, 1 Jul 2024 07:43:01 +0000
Message-ID: <SJ0PR11MB5865732B1441F8CD70CF61E48FD32@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240607104349.823255-1-wojciech.drewek@intel.com>
In-Reply-To: <20240607104349.823255-1-wojciech.drewek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|MW3PR11MB4649:EE_
x-ms-office365-filtering-correlation-id: 692572f3-4005-423f-3a12-08dc99a16f7a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?s3u3v4q7YJXeenSAN/eZBxFDKNi3DJFSuWvT6w01zreiqPKpDWGep8bRXFGs?=
 =?us-ascii?Q?uGp71/74KSfac+HlI+66f/BLwp2RvjQyDflLm+gc0/OS66A0vf+fxPUt0Aq/?=
 =?us-ascii?Q?cSUnwD7kdGDGFckx+DpgWzr+3cD+i6A9734BufQAjEcaYhoZYHR9b2fnXdtj?=
 =?us-ascii?Q?Ee9tTw3pU8N1jHxJhjCVoOC+pVVC30QIGRyxwkL74pnKUGj1SvMbtB//QeOC?=
 =?us-ascii?Q?aKd1MfOSCRh0zcLHgfdfJhCER3Q08AIqnBeYBlnDfh5oFby3mv3kzi8Atb8e?=
 =?us-ascii?Q?qvReRhgbQtypNiQk9cc8dWnk61OcGLBRNTXI0Wn074gM4H2NGiUxdI5mKqgM?=
 =?us-ascii?Q?vqdBSWyZ6RieNr5f/7pJXtKowvo3x1r34SoGeVl1m1xAiNmqrrnwUxSt+tmW?=
 =?us-ascii?Q?lgqqWJeAMbcNBdmDahiymoXN3ejQ4GKVURm3Z1Yr/uCFNXmo1rZs0zLm26kP?=
 =?us-ascii?Q?yC8cS2eQWS38ynEWTMyKkHP0BeiAeg6PGSkV8ga8fEO5neFtnIg3czSU4RyC?=
 =?us-ascii?Q?eqT8+wQpatKEPILuaJ3UeBSr4Oy1iYHjHWuxy0WmqHmbNQ1PsdnOZOw3v2Im?=
 =?us-ascii?Q?ce/O+b4uWcE1e1d3aQ/xk2w/WvKubsx4/cmYJEEcUTe6gg9Xf5ZyiWhxURHr?=
 =?us-ascii?Q?nG5zcV5NTpO7kv1iRpvuiwkXV+tK8ko8I+wskTIRS1QropX4/rvslBvVFzbZ?=
 =?us-ascii?Q?1K7aiVsPSqIkj5sJXfEZxgDvAHCWZUjqO0MZchioiP4z36eHwgtfUHw4AlqR?=
 =?us-ascii?Q?sN78wvstIbqTp+YZdEwVIDzcou/q1dXmgbZIo3TWEjJFJUvbTjuMCXnQeZjs?=
 =?us-ascii?Q?25g1JgH8qd7FS6Gs18Sw9V/92S2x7Z1YF14DKiFxBH1v+3q73BYPjlnVjGPs?=
 =?us-ascii?Q?xQEHUcPryTp1NQJQd2Bjmdz/bSukxxnwFsPlCzcCgJU5qL7N6n0hwGIkkON7?=
 =?us-ascii?Q?3JLjBeEt8N8tbdhsuqYC8IRxM6sUrjb4LMrAzAl7OET1iQCE5KQeNhRU5bzs?=
 =?us-ascii?Q?18nSy4K50fU9BLWlsK5XH79wcv8G/HSbmSTDMQVGaqNejFTZMFyimlfGSFU+?=
 =?us-ascii?Q?+FlbnIxQ1e8glL7NTFbFIk+nAAo+WSUmitYRJliT4JMpLGRcih+zWDjV0rO5?=
 =?us-ascii?Q?RZ3yldiAZDXOR/Eqbhcfb67ftXKvjOXXwWph7210twxmUnuJSnwD7OGG50Fa?=
 =?us-ascii?Q?d+8pNTuD4iRZCkRi8gWXIlPjOiB21xXhLztFIrV+oJwoj6EezhuVd+Kv+9Mb?=
 =?us-ascii?Q?dctyx2D6lhYSJFA2TPMESMt/nMWipY15QkfGSQErdALl8NBVcduyGv+uBksb?=
 =?us-ascii?Q?VJDCli8zKsZtSNNSD+IoyM5QkUclEG2JsIXVHAzLpb18/USTsjw9ltWQ/Gge?=
 =?us-ascii?Q?0VTqbien2nxB4kvIIgILE7+MRHqE1NWl/cQa7DyjGUvifp0HoA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/4rnuwgQUzaMg8gT/zT/4skmGyJpR3nCb0bd3SBf/doGp2PdpKWPS5mMItAA?=
 =?us-ascii?Q?ohfyS3E+nIFPGr53WCqWVrjgzm4A/mkOGee5NY8tJ5MlVpvD+M6VVGn0OZvv?=
 =?us-ascii?Q?DBM2hg97EJSZZ3V+OTBTG9i0At5FEhZo9u/MzxMzv7szKznFOo4UeqPblF2D?=
 =?us-ascii?Q?t+QK+Nr7AuXnXzK/es+TNyCou+uI5HWWPoI2/uBzBtwQ5gqumL5GZTc/0Sb5?=
 =?us-ascii?Q?1bU+/yaM9WRgwudICew22QubhvjBHZb2QLatXVRNOkRHTVgryhO6DxIUedK9?=
 =?us-ascii?Q?EV+VxmkVLQIVDVL689+pRR17YiIVxAPgdESNnrIycrCOoDzhlA8meaUC67ip?=
 =?us-ascii?Q?U1XZptDgalAhpHFetPOzaUNjJrPmiyStd/oUaACzojsTTCBgwq3aT3qcMacP?=
 =?us-ascii?Q?eSXGVgQ02dz9N5xcY5X30xdUHhEH4UWLcZkEENeN6vK0dv78STWjXASnBsuO?=
 =?us-ascii?Q?SLk7H0n01VstIOBV6oalz1Eal/bLcAvzBm3Y0ZYZOLJKpcMYB8iDvHr2CCmb?=
 =?us-ascii?Q?9fX6aHA6FbyWPsfxBfpNDcKksHdTQ0utGdn83dSnl/e0uSeZdH8RmRq1xjdn?=
 =?us-ascii?Q?sWnRiC+5BYhCMqOpbWCwBuaifUTfcg05VbJ1Vcwa1ttJk0i1mLvllqQ86GDH?=
 =?us-ascii?Q?71KXdNzJEQI3RN8/hm6OXjwlyoXECxyxSpYVVHbjE0Edp34PuVNYxkSAdSMS?=
 =?us-ascii?Q?OzVyfb2lbJkJbf3K55gTOqy+pk0tqDe8lBcz1+AuUT5TJk7RiHpz1pE0WkVG?=
 =?us-ascii?Q?deo7aM1SuI4aIYzVuTwDLA0YihXn14Z0apRrHBxjxZrkcjX/KayqYFEZkyM4?=
 =?us-ascii?Q?aVW10Jvh9z/ftyZ+Z/ma4qatZndOIGj8hDAqt8j71pYc2N8EtrgQLW2fz+ra?=
 =?us-ascii?Q?0RXoTdFfMVmarmz/IQkaqCwwYD2pdO8o4rbUqs84eTJmg4VYOKnymHVnxZRE?=
 =?us-ascii?Q?hdxs5+H5A2wuhooMqqeB4U5JGCtZwrWtTC3Uv+LxiQr+g8YH8wnyxZx1NW8Q?=
 =?us-ascii?Q?Sj7lkduUo9dghdeqHq6LwgwHumR0zLNnfeAq6omfL7FoXd+B2ihN+/P3ygOs?=
 =?us-ascii?Q?exIhoCxPAGj27XuQ6qQg/9JgiPhnRJGXPNgSvb8LBBvaYFM0W5HQ91OdQnG6?=
 =?us-ascii?Q?N8B1mk+1t3HnkXjS4+UTLwxdhMqp0c/MOGeY3bX06HetIfXAGYOjBkbgXLbu?=
 =?us-ascii?Q?LbzgVbzXelMvGn7rilLDw52zg2p6MgQcxallVFbz3vWwRck0onM/vJjyVP+C?=
 =?us-ascii?Q?Ez692UZj2ZV1KiXijAazSkPmY72dco3/kySC6RZlfZqfm7CIDlI+H9c41vYB?=
 =?us-ascii?Q?cLqvEuUM2HTx9z4L15r06W+Jd1QtyPoy+b0gKip+1dGjLXC9LbwGVnaHFr5i?=
 =?us-ascii?Q?wpb23oJl1uccw7LRN0Dbn/Y0P7HnNCcW8nszl6Fo9rq6Z2jlN5Dkca6l7ru0?=
 =?us-ascii?Q?G4RP4NQoF0Bv5Tk9R2MJyEIbq9sI7ofUJZ3ARCE2WDVKTZRtnb4/ExUZ2rnj?=
 =?us-ascii?Q?DxIn+AqBqc6/6jac90sXFLka5ej9OVC/CF1bdvkJyqOqSX/M1tVhtLbFutZH?=
 =?us-ascii?Q?ShiAEssMrx+/QQwPia48LvCU/dzZzesJjcEFDk/qOfydHAFCCAxa6bB6w1Lk?=
 =?us-ascii?Q?yw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 692572f3-4005-423f-3a12-08dc99a16f7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 07:43:01.8578 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fd5SKKITyAwlc2egfNqnq2E9rfKUKWGJQ8Mall9JDtb7DGyBAbs8SQSV6xaMOJJc1FQbbY0UI5PCpJ1r1Nm54YIOFk/PAtyS/ghgCiGNuAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4649
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719819786; x=1751355786;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y6sFOEYJICcpDLiAnnxgo+yqJl+CkrZyFzxh0vdPElc=;
 b=f6OXV5ofCPtCR60x+Tvi04dXdV8x+VJzdlYISoZ5STuvIMgAyVATV7+D
 TYXYdhgWFgxHgq5BM29Uzef6Vg6jyWtJf/Nahz8Z44cl9xC6koYJswwBp
 tNbk10w6+ikTXQQ/mjaZ/JfKmBeX2h00uaw8V61Iiq9l8CKtD/p6lnl+d
 ePoWA9danFO+osdcCEz4BvITdAiUVo2rsz0Jc7eaSLwvgerNs/Gep8ALG
 ELluGaEKcSVQUa8P2rNKMGfKg7HDXSsDd4UE7ftvjHzqzVnJW+giZkS/x
 SLlqhXoBCnZlcZ/k2XmtlpMRyCG3LR4eHh+DgNO797uICLi8j5Tb2e3Md
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=f6OXV5of
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] ice: Add support for
 devlink local_forwarding param.
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jiri@resnulli.us" <jiri@resnulli.us>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Friday, June 7, 2024 12:44 PM
> To: netdev@vger.kernel.org
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; kuba@kernel.org; intel-wi=
red-
> lan@lists.osuosl.org; jiri@resnulli.us
> Subject: [Intel-wired-lan] [PATCH iwl-next v4] ice: Add support for devli=
nk
> local_forwarding param.
>=20
> From: Pawel Kaminski <pawel.kaminski@intel.com>
>=20
> Add support for driver-specific devlink local_forwarding param.
> Supported values are "enabled", "disabled" and "prioritized".
> Default configuration is set to "enabled".
>=20
> Add documentation in networking/devlink/ice.rst.
>=20
> In previous generations of Intel NICs the transmit scheduler was only lim=
ited by
> PCIe bandwidth when scheduling/assigning hairpin-badwidth between VFs.
> Changes to E810 HW design introduced scheduler limitation, so that availa=
ble
> hairpin-bandwidth is bound to external port speed.
> In order to address this limitation and enable NFV services such as "serv=
ice
> chaining" a knob to adjust the scheduler config was created.
> Driver can send a configuration message to the FW over admin queue and
> internal FW logic will reconfigure HW to prioritize and add more BW to VF=
 to VF
> traffic. As end result for example 10G port will no longer limit hairpin-=
badwith to
> 10G and much higher speeds can be achieved.
>=20
> Devlink local_forwarding param set to "prioritized" enables higher hairpi=
n-
> badwitdh on related PFs. Configuration is applicable only to 8x10G and 4x=
25G
> cards.
>=20
> Changing local_forwarding configuration will trigger CORER reset in order=
 to take
> effect.
>=20
> Example command to change current value:
> devlink dev param set pci/0000:b2:00.3 name local_forwarding \
>         value prioritized \
>         cmode runtime
>=20
> Co-developed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Kaminski <pawel.kaminski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
> v2: Extend documentation
> v3: rename loopback to local_forwarding
> v4: change in documentation about what types of functions
>     are affected
> ---
>  Documentation/networking/devlink/ice.rst      |  25 ++++
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 126 ++++++++++++++++++
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  11 +-
>  drivers/net/ethernet/intel/ice/ice_common.c   |   4 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>  5 files changed, 166 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/networking/devlink/ice.rst
> b/Documentation/networking/devlink/ice.rst
> index 830c04354222..e3972d03cea0 100644
> --- a/Documentation/networking/devlink/ice.rst
> +++ b/Documentation/networking/devlink/ice.rst
> @@ -11,6 +11,7 @@ Parameters


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


