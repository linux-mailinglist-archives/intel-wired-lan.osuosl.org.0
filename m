Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EDnwFnRqtGnxnQAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 20:50:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBB62896DC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 20:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3D4940CF8;
	Fri, 13 Mar 2026 19:50:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LBZbH-cf-YIu; Fri, 13 Mar 2026 19:50:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BF02040CF3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773431407;
	bh=oboy46kh+BValJ02/UxaH+b7+z9H2GRtJTzATXLgZDU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=qJJhZd7Mjb2kz6/f2AEnQfnOACcfC1cnwnz3K2OgfpYh8DmcOOS1bniEQYsDYT9u8
	 m4EF480NLGfirqSH7WuQOOKzpywWVm4rxSvo4sW7ZBTpuGDVxJbSdLVithgkbKwzfy
	 3LgLzPpJrDABvFug1X+Jt9dpApHhkHtL3ZRGjzYNt0hBizhfU5TNc1DH8ijrYf9dmi
	 EuK4Da7WPr/Xi9gm/1liCk/bBp+BWBMbJIowYWiwuqEdwXjvecapEY2Azwbj7+V4hY
	 ZAyS4Mz7spR1S87/VBx3caVRaLbJBB4Hr/kZxqW5n1SsAV0INHit03nd2lRV6yTfnO
	 QX79Hr3CzO87A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF02040CF3;
	Fri, 13 Mar 2026 19:50:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 11D87786
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 19:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EAFF140591
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 19:50:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Katoh9QQdFa2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 19:50:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2A2B940062
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A2B940062
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A2B940062
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 19:50:04 +0000 (UTC)
X-CSE-ConnectionGUID: bAJKoef2Q+GFlBhZCJM2Ig==
X-CSE-MsgGUID: G9eZp/d8SD6Y7ytLmn0V9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="85630941"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="85630941"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 12:50:04 -0700
X-CSE-ConnectionGUID: caf66qwmT6u7bZLvQyBYzA==
X-CSE-MsgGUID: +z+NaHXIQCK8aLl8Xg2LPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="217238200"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 12:50:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 12:50:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 13 Mar 2026 12:50:02 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.22) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 13 Mar 2026 12:50:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YarFBeu9gUQEjva56+OaFQwwhUE5sBhsl7aKEbVCW1XE8sjCoQouIWvBQV8W1q7mF8d8AXoijSblcQyvoC151xmRS8ujc4BZDobxhgDYtIhtrAk20eziqNyNsoz/YOdhzoP04Ee7Swntg4LxWcOMD+q76+Ted8D8ozEWb26fFVdccybDc3CAalFhD0gnSdlvzIeRrJMYc7rY7H2XqjlknN1Bcc5mlHEbtJxkhFveaeGT90qzFTBk7Iqe+3VEaGEMc91jccBiL637FO1m6CGzsJAVbhOx/R6kjH08ZLdRgRLXI1z3PH6/hngJEczJoxwWNNjadHTULJVOhf64+YJ3Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oboy46kh+BValJ02/UxaH+b7+z9H2GRtJTzATXLgZDU=;
 b=DG467x18HnehR91v3Ai1fPJMVVpeJjl5w8IURv5ojawQEregrsDxKM7UhJUePZDg03eEzk5bYENA3CuCdV/H2oWygzDl32mEona3rWd3Ckm3hy+ywUQgHa9f32+cEmUS9WZdNwetGbs9blgkpEu9920C1vx38gsPADIeHRERGzhKEjh0ADetMBviS53lkjpT4/m4qHm29aXVJAeQ8p53QtjIL50TmMV5tN83NloUGxH6Ix5wliVCIPposc73G1qWOwchAhcpKLNH6+YdkETgoF6a2X7v9z/Vbd7uvbJE/j7WfVTEEbW/LyZ4qhVqqQbT0vykgZRVHIA753gPE6m1Qw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6219.namprd11.prod.outlook.com (2603:10b6:208:3e9::15)
 by CO1PR11MB4882.namprd11.prod.outlook.com (2603:10b6:303:97::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.8; Fri, 13 Mar
 2026 19:50:00 +0000
Received: from IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31]) by IA1PR11MB6219.namprd11.prod.outlook.com
 ([fe80::a2b9:8e8:c48b:ea31%3]) with mapi id 15.20.9723.004; Fri, 13 Mar 2026
 19:49:59 +0000
From: "Nitka, Grzegorz" <grzegorz.nitka@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Korba, Przemyslaw"
 <przemyslaw.korba@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
Thread-Index: AQHcsH3lsFFP77VH3kC++33SCZXqy7WnngwAgAUk9QCAACBBkA==
Date: Fri, 13 Mar 2026 19:49:59 +0000
Message-ID: <IA1PR11MB6219835D7B1FA98C88E828CF9245A@IA1PR11MB6219.namprd11.prod.outlook.com>
References: <20260310110700.345904-1-przemyslaw.korba@intel.com>
 <IA3PR11MB89862BC3078293849BE46C35E546A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <6cff08a5-1bee-4cd2-b8e8-aef6a8f4d498@intel.com>
In-Reply-To: <6cff08a5-1bee-4cd2-b8e8-aef6a8f4d498@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6219:EE_|CO1PR11MB4882:EE_
x-ms-office365-filtering-correlation-id: b8b77e50-0c37-4aeb-da02-08de8139b588
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: MCJPjj53g1i69Ouo9W9zvofEvCuLp7po4XnZszgSr0NQEN03dk8pK6+elEduKjOIRq+m3vDowVffTsu9em8YIafLtOPNZAtSafDMl+2et8F/yaSvtLYbFGrFFd2bcaaY1lUTpOx9+eCvODHtK74yIS606zLzSbVv+u+ARPEdabo4aTBy+3bE51JRUCaS4NQqJ0mdfmJMAQVudrALf2w1mtZnB88kw9ZYYj/7/mZzWd0GUrapW1+1kzkIsSJEVCczdSIW18u6AvuyXoI+HohKxocMiGZMbivh7VgTSeopZlMZxx1NtaiC+e+nimWmN4A0bSQnxDAmt1PIy7+6ArTUFHIRsYHs/WAs5wSxiRmZHoYLBYnVOVMgYIRx0BGYFibNICzJwHmJ78C1YSKVWl9kN8GstomOzhnonDI0UUFVYAokxU4AlT7I+fZfO2Z/ertNnRsqqFbE7oA4hGDpxsP5dDwYicLYWT5KfMa9aj0/eqotYeLRVxJkEW8dQ7m46Bp6pbrz6gu+9hg02QJN0pD9nGDG/vjr5WjhYuebqb3gsIA+9GrsiJIt7cr8pFP2ueiHsD5TdtQVdUPXCMk2cuvk+B3bI/4EIlFfhrpxfXDssC30p9zpK7DBZ2xXIFfyCSV/zZKLvRG+2+8WJzyMTlXDwc8oDOW7mqvndYFiA+66NiW3GnbqtwQkehF90NxtYWiHDqc81Q2uzswicFBeuDpfG7Jn+KfRdaiNwpCaeTqSlNp/Uup+v8IU5mdQRLdJWnHgwIG4OR1jdUaVmZEF+DSofEd75OQ3IpSX+SavWPjkYQE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6219.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGVQZVlXK0Jha2E0Y1JKbUtCa2kvNFpKOWJabXNBaTVPYmFIQUl5cHVmd0Jo?=
 =?utf-8?B?cExFc1QyRHZoaUxCMDZnTjRocENJODFaN0ZTaXZtblhwbEZueWlnMHVKUWVN?=
 =?utf-8?B?WEtKYlYvOHlMWlRab0JXUU5HVHFreFdnZHUwTXdSdlVqSS9MMjRvTStBWmNT?=
 =?utf-8?B?Nm5Oa1dRUzJhKytoakJNYklSYzR4ODFCa2VOdDd3aWlHZlhUcG5va2hDQW5v?=
 =?utf-8?B?T1l0Um5XcnpyMFN6K2xBcGhBM3NEOXRIUzhHNWNJKy94T3pmL1hjeHNyazBi?=
 =?utf-8?B?WUJtbUNGLzFPa28yd3hxMFZlckYvQ2krV2Y1ME1qY2hUVS95cU1MTVlidENr?=
 =?utf-8?B?TWM2WWxUak56YjFpTFI0ajh5QnNZSmVzT2ZDbEVTZzBLZnlEa0d1a21NdTVp?=
 =?utf-8?B?eHlyaVgxc0x0UmQzMjhsT2xreUdpN2trMHdsSFJ0WTNqdDJXbjZ0Z2VLd1Ar?=
 =?utf-8?B?OUFwejFWeTh4VXVQWmNJUENWV3lUN1AwalN0cHArL3J2VDdBN21Cem53aG55?=
 =?utf-8?B?OVNNODdaaTM2cUg5bGsyTnQrZzhHSFA1bWxyK2lrRHdBVmcxZ1BKbG12cGJz?=
 =?utf-8?B?WlRhcXN1MTV0MUxQRFIyeVVnS1NaV1o5QkpPb2VxNmxybXRjT3JFSnN6UWZC?=
 =?utf-8?B?V0liRzlUVjJUbmdWUzlBRXNRdGxaZXpMZG8xcGZpL3J1YThlYWNLYWJ6Q0t2?=
 =?utf-8?B?NTNYd0J4ZkZUbHJpTllWdHNqZXMwVmdrSDdDb1ZYN2RrN0E0RURCVjRUbnNv?=
 =?utf-8?B?bWU2WGExeWZmdU1xaVFISUp4VDFwcEh4WjdDZVRHZFlCVTlxZ3YyWG9BSWU0?=
 =?utf-8?B?WTRHTFkwZU03alJVb3dwUXZDb1BnZEtSQUMrSDdHcjEwd25kbGZzN3IwMUhL?=
 =?utf-8?B?NXc2RTFKSlltdlZFZ3hCaE8yUGsrZzRyWVJyenZSc3FCT0ZadGUzeWZTVTF1?=
 =?utf-8?B?L3lNRFJrU29sU2pldTdkSVZUV1ZTcW91Y2tZTkV1RFNScjFjbHBGRHJHcUV6?=
 =?utf-8?B?eGZsMngxbmcwcWxOUDBjbEdZTFdDaGtlNTRVaGNlb3d1NUN3ZXAzYWhZRFNE?=
 =?utf-8?B?aEdjL0RpamR1ZU9PQWNNVkF2aVI2OGZPNGFjMnV5NXIvcG5jTXRSWUV0bzZh?=
 =?utf-8?B?N1BHaEpnbHFYc1cyTExORHg5djE0MStCWFNTcFFSVkFlaGVxenhWbjdERlRp?=
 =?utf-8?B?QUhnOXphdXgwNzl0VDhLS2JEUEZiUXdCTHVqaWJIVHU2TXBOeFB1UWRVVitH?=
 =?utf-8?B?bHMzV1RFSFdUWnNkbjJMWEhWRDRQYjdoV2NCaUg1Vm9SQlg2Mng1c3FmM09p?=
 =?utf-8?B?VWNEYk94QjhPOFplUW5PZnFCTkRVUTFEUTVqUEZWUHVLUnBtMVZWMUdEODR2?=
 =?utf-8?B?eVB2M1Nyc1QxT0xxQ3prYk44blJJU2N0eWlHQ3J6RWsrYTIwVGo4Mnlrampx?=
 =?utf-8?B?T1d1cWo2WDZkVGppS0E0UkRUQzVCREtCWDZrSnYvQ3BBUDJpcUxFSU02elBn?=
 =?utf-8?B?ZlRPWjkzeTNXQzlIZTQweWdDYUk3SDREenRHZHRRVmRES2l4cmpqaVNYRDl1?=
 =?utf-8?B?SGt3TVpqYVJHcXJqT2VXOERrd0M2aGkrTkNvbDVUL091WGhOU3NSRXVONWI4?=
 =?utf-8?B?MkVVM0hxNU5NT2IxOGpUT1dDcTlSZWVFWVNCUEdiRXI4YjZ4SEpFYjZPS0o2?=
 =?utf-8?B?WTF5dXpQdGVjOHh6bW1lNE11NFF6YTZqN1l2YXBTK3RXZHdZR0h6MDkzaFhW?=
 =?utf-8?B?ekk5dzFZTktNZEpQWUpScFYvZ1lvWGFHVm5MWGoyUmJjYzlOZlEyeWhTOTQ2?=
 =?utf-8?B?eGZ4bEViZUpuMHp5aENLUVJUOVZzb2lUNGViTFBNa25YNlB5eVlJcSthb0Y5?=
 =?utf-8?B?OGJ5eEFQSmRpcCsvRTJhUmxWNE5BYk0wR2s2amVNN0psZXNrMnNmSGVjQm9P?=
 =?utf-8?B?WDZFeWw5Mjk2VkF4dFF0a0k4UHNydUdqYm9RSGR6RFlnMEtaNTh2TXkxT2lI?=
 =?utf-8?B?NlhMNkNabFRicVJNT0JJL1hPYWVic3dQZ0lrekxzWTM2U0RhSWNQbVVYY3ht?=
 =?utf-8?B?d3pUZzlaWWpVUVdvbEZTa3VsUklSbkkrNnE1OHRjY0JrVjY5ZW12Y0dKM1FV?=
 =?utf-8?B?cG9rS1paQWRKUDBVSkpBVUpqL1BKTWxhKy9BUlY3OWJrWGJwaWVqVHlRSzNw?=
 =?utf-8?B?RTk2YndBWDRrNXhLUkVnNldoVzVhRVpZalNmWUNKQjZFUWNEQ1ZFcStXQXRJ?=
 =?utf-8?B?aUdwYm9oNTZBWXovbVE5d0tJd1NNb0JnSDVzZTIwenlPbElYN0YvYVdCTHJM?=
 =?utf-8?B?YUg0NmVUSXRiSkNXcXVYM0ZhUCtheTQ1Yk1ZQWtUYzliWDd5YXNpdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Qc7TeCuGlwh5dULECzjx1C1/ikjFaRIS0xXWJsxs86vrkXdOxV7zg9rxxJR24GrXOTanM7NShuLldyD63RsvcXQDci0kaDmmPp2UoaGPX+sQViXn6oluuAeFVM8oBsIeV2a8M/ADhGjFPUE4deQugMeNKQBB8E5PHUd8PW3tmHN8PCIGG+Zc6OF1pF7K2intTGD89tpWf34AHbYczsNm8psvOaDEN9/UpCTVCSvHMCQWll5JMguEgEEC7SCrNBBudc5hpA5f7HZgPPnXG3pNQbbtYkw4LPZf97oE8uynceH6OyMlE2pZ6ysPllmEHa6peQ+wJgsGaAghr63qjLmk8Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6219.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8b77e50-0c37-4aeb-da02-08de8139b588
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 19:49:59.1501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wvJeTtca4UnUB2HPz910l9wPiDgjSbDj2Abj/7SgnU28yRPGj4B/oevfsBR8/MRi5gODTvfC1O8E7fR/o+A58Mg45E89fjoN6Y+ghzJ3aI8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4882
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773431405; x=1804967405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oboy46kh+BValJ02/UxaH+b7+z9H2GRtJTzATXLgZDU=;
 b=UoaEarp45zJuYWrK4tv0Z/0XsRO6zQXU1bnh8b3HL1E0GV3H8qZWYmRd
 iGehspBIyF2E7Vj93m8UcQk3NjQETLSYSgDtWrO1aFCsnNiZEJoGrtToH
 fKo4wHbxRzbVzdxpacsC0taC8sMUj1SBOo+TXvFG51oZuSRXAivuG7mq1
 7draeqeRBNeZ9hOvx5rKKlXVadYXhdn2pxlbH+Mwkb3XcgWHF0kU1TDkq
 SPbAfXh9GHRnsoNZ0b0rPcaKypbx1OutsDCXkv4vMKK4/o0jH7PUZFHRq
 hLlGZxGsxx4qq6jws/TLwp66t/e4ivjs7QBDxpaLr/BkT9MGVgczztafh
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UoaEarp4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support
 for sideband queue operations
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
X-Spamd-Result: default: False [1.49 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.korba@intel.com,m:netdev@vger.kernel.org,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:email,msg.data:url,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3FBB62896DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLXdpcmVkLWxhbiA8
aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24gQmVoYWxmIE9mDQo+IFRvbnkg
Tmd1eWVuDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMTMsIDIwMjYgNjo1MSBQTQ0KPiBUbzogTG9r
dGlvbm92LCBBbGVrc2FuZHIgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPjsgS29yYmEs
DQo+IFByemVteXNsYXcgPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQt
DQo+IGxhbkBsaXN0cy5vc3Vvc2wub3JnDQo+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBL
aXRzemVsLCBQcnplbXlzbGF3DQo+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1uZXRdIGljZTogZml4IHBv
c3RlZCB3cml0ZSBzdXBwb3J0DQo+IGZvciBzaWRlYmFuZCBxdWV1ZSBvcGVyYXRpb25zDQo+IA0K
PiANCj4gDQo+IE9uIDMvMTAvMjAyNiA0OjE3IEFNLCBMb2t0aW9ub3YsIEFsZWtzYW5kciB3cm90
ZToNCj4gPg0KPiA+DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206
IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24g
QmVoYWxmDQo+ID4+IE9mIFByemVteXNsYXcgS29yYmENCj4gPj4gU2VudDogVHVlc2RheSwgTWFy
Y2ggMTAsIDIwMjYgMTI6MDcgUE0NCj4gPj4gVG86IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vv
c2wub3JnDQo+ID4+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBOZ3V5ZW4sIEFudGhvbnkg
TA0KPiA+PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBLaXRzemVsLCBQcnplbXlzbGF3
DQo+ID4+IDxwcnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgS29yYmEsIFByemVteXNsYXcN
Cj4gPj4gPHByemVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiA+PiBTdWJqZWN0OiBbSW50ZWwt
d2lyZWQtbGFuXSBbUEFUQ0ggaXdsLW5ldF0gaWNlOiBmaXggcG9zdGVkIHdyaXRlDQo+ID4+IHN1
cHBvcnQgZm9yIHNpZGViYW5kIHF1ZXVlIG9wZXJhdGlvbnMNCj4gPj4NCj4gPj4gT24gRTgzMCwg
UFRQIHRpbWUgYWRqdXN0bWVudCBjb21tYW5kcyBzZW50IHZpYSBTQlEgZG9uJ3QgZ2VuZXJhdGUN
Cj4gPj4gY29tcGxldGlvbiByZXNwb25zZXMsIGNhdXNpbmcgdGhlIGRyaXZlciB0byB0aW1lb3V0
IHdhaXRpbmcgYW5kIHJldHVybg0KPiA+PiAtRUlPLCB3aGVuIHRyeWluZzoNCj4gPj4NCj4gPj4g
cGhjX2N0bCBldGg4IGdldCBhZGogMiBnZXQNCj4gPj4gZG1lc2c6IGljZSAwMDAwOjFhOjAwLjA6
IFBUUCBmYWlsZWQgdG8gYWRqdXN0IHRpbWUsIGVyciAtNQ0KPiA+Pg0KPiA+PiBBZGQgc3VwcG9y
dCBmb3IgcG9zdGVkIG1vZGUgbm90IHRvIHdhaXQgZm9yIGNvbXBsZXRpb24gcmVzcG9uc2UuDQo+
ID4+DQo+ID4+IEZpeGVzOiA4ZjVlZTNjNDc3YTggKCJpY2U6IGFkZCBzdXBwb3J0IGZvciBzaWRl
YmFuZCBtZXNzYWdlcyIpDQo+ID4+IFNpZ25lZC1vZmYtYnk6IFByemVteXNsYXcgS29yYmEgPHBy
emVteXNsYXcua29yYmFAaW50ZWwuY29tPg0KPiA+PiAtLS0NCj4gPj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jICAgfCA3ICsrKysrKy0NCj4gPj4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbnRyb2xxLmMgfCA0ICsrKysNCj4gPj4g
ZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb250cm9scS5oIHwgMSArDQo+ID4+
ICAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4+
DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5jDQo+ID4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24u
Yw0KPiA+PiBpbmRleCA4ODY2OTAyZWZiOTEuLmRmOWU1NDIyYjk4MSAxMDA2NDQNCj4gPj4gLS0t
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPiA+PiArKysg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1vbi5jDQo+ID4+IEBAIC0x
NzY1LDYgKzE3NjUsNyBAQCBpbnQgaWNlX3NicV9yd19yZWcoc3RydWN0IGljZV9odyAqaHcsIHN0
cnVjdA0KPiA+PiBpY2Vfc2JxX21zZ19pbnB1dCAqaW4sIHUxNiBmbGFncykgIHsNCj4gPj4gICAJ
c3RydWN0IGljZV9zYnFfY21kX2Rlc2MgZGVzYyA9IHswfTsNCj4gPj4gICAJc3RydWN0IGljZV9z
YnFfbXNnX3JlcSBtc2cgPSB7MH07DQo+ID4+ICsJc3RydWN0IGljZV9zcV9jZCBjZCA9IHswfTsN
Cj4gDQo+IFBsZWFzZSBpbml0IHdpdGhvdXQgdGhlIDAgaS5lLiB7fQ0KPiANCj4gPj4gICAJdTE2
IG1zZ19sZW47DQo+ID4+ICAgCWludCBzdGF0dXM7DQo+ID4+DQo+ID4+IEBAIC0xNzg1LDEwICsx
Nzg2LDE0IEBAIGludCBpY2Vfc2JxX3J3X3JlZyhzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0DQo+
ID4+IGljZV9zYnFfbXNnX2lucHV0ICppbiwgdTE2IGZsYWdzKQ0KPiA+PiAgIAkJICovDQo+ID4+
ICAgCQltc2dfbGVuIC09IHNpemVvZihtc2cuZGF0YSk7DQo+ID4+DQo+ID4+ICsJaWYgKGluLT5v
cGNvZGUgPT0gaWNlX3NicV9tc2dfd3IpDQo+ID4+ICsJCWNkLnBvc3Rwb25lID0gMTsNCj4gPj4g
Kw0KPiA+PiAgIAlkZXNjLmZsYWdzID0gY3B1X3RvX2xlMTYoZmxhZ3MpOw0KPiA+PiAgIAlkZXNj
Lm9wY29kZSA9IGNwdV90b19sZTE2KGljZV9zYnFfb3BjX25laWdoX2Rldl9yZXEpOw0KPiA+PiAg
IAlkZXNjLnBhcmFtMC5jbWRfbGVuID0gY3B1X3RvX2xlMTYobXNnX2xlbik7DQo+ID4+IC0Jc3Rh
dHVzID0gaWNlX3NicV9zZW5kX2NtZChodywgJmRlc2MsICZtc2csIG1zZ19sZW4sIE5VTEwpOw0K
PiA+PiArCXN0YXR1cyA9IGljZV9zYnFfc2VuZF9jbWQoaHcsICZkZXNjLCAmbXNnLCBtc2dfbGVu
LCAmY2QpOw0KPiA+PiArDQo+ID4+ICAgCWlmICghc3RhdHVzICYmICFpbi0+b3Bjb2RlKQ0KPiA+
PiAgIAkJaW4tPmRhdGEgPSBsZTMyX3RvX2NwdQ0KPiA+PiAgIAkJCSgoKHN0cnVjdCBpY2Vfc2Jx
X21zZ19jbXBsICopJm1zZyktPmRhdGEpOyBkaWZmIC0NCj4gPj4gLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYw0KPiA+PiBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuYw0KPiA+PiBpbmRleCBkY2I4MzdjYWRkMTgu
LjVmYjNhODQ0MWJlYiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9jb250cm9scS5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfY29udHJvbHEuYw0KPiA+PiBAQCAtMTA4Niw2ICsxMDg2LDEwIEBAIGljZV9z
cV9zZW5kX2NtZChzdHJ1Y3QgaWNlX2h3ICpodywgc3RydWN0DQo+ID4+IGljZV9jdGxfcV9pbmZv
ICpjcSwNCj4gPj4gICAJd3IzMihodywgY3EtPnNxLnRhaWwsIGNxLT5zcS5uZXh0X3RvX3VzZSk7
DQo+ID4+ICAgCWljZV9mbHVzaChodyk7DQo+ID4+DQo+ID4+ICsJLyogSWYgdGhlIG1lc3NhZ2Ug
aXMgcG9zdGVkLCBkb24ndCB3YWl0IGZvciBjb21wbGV0aW9uLiAqLw0KPiA+PiArCWlmIChjZCAm
JiBjZC0+cG9zdHBvbmUpDQo+ID4+ICsJCWdvdG8gc3Ffc2VuZF9jb21tYW5kX2Vycm9yOw0KPiA+
PiArDQo+ID4+ICAgCS8qIFdhaXQgZm9yIHRoZSBjb21tYW5kIHRvIGNvbXBsZXRlLiBJZiBpdCBm
aW5pc2hlcyB3aXRoaW4gdGhlDQo+ID4+ICAgCSAqIHRpbWVvdXQsIGNvcHkgdGhlIGRlc2NyaXB0
b3IgYmFjayB0byB0ZW1wLg0KPiA+PiAgIAkgKi8NCj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaA0KPiA+PiBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaA0KPiA+PiBpbmRleCA3ODgwNDBkZDY2
MmUuLjdjOThkM2EwMzE0ZSAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb250cm9scS5oDQo+ID4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfY29udHJvbHEuaA0KPiA+PiBAQCAtNzcsNiArNzcsNyBAQCBzdHJ1Y3Qg
aWNlX2N0bF9xX3Jpbmcgew0KPiA+PiAgIC8qIHNxIHRyYW5zYWN0aW9uIGRldGFpbHMgKi8NCj4g
Pj4gICBzdHJ1Y3QgaWNlX3NxX2NkIHsNCj4gPj4gICAJc3RydWN0IGxpYmllX2FxX2Rlc2MgKndi
X2Rlc2M7DQo+ID4+ICsJdTggcG9zdHBvbmUgOiAxOw0KPiA+IEknZCByZWNvbW1lbmQgdG8gcmVu
YW1lIHBvc3Rwb25lIC0+IHBvc3RlZCB0byBtYXRjaCB0ZXJtaW5vbG9neSAvKg0KPiBwb3N0ZWQg
d3JpdGUgKi8uDQo+IA0KPiBJIHRoaW5rIHRoZSBuYW1lIGlzIGEgYml0IG1pc2xlYWRpbmcuIFRv
IG5vdCB3YWl0LCB3ZSBuZWVkIHRvIHNldA0KPiAncG9zdHBvbmUnPyBJIHdvdWxkIHRoaW5rIHBv
c3Rwb25lIG1lYW5zIHdlIHdhbnQgdG8gd2FpdC4gSWYgd2Ugd2FudCB0bw0KPiByZXByZXNlbnQg
ZnVuY3Rpb25hbGl0eSwgbWF5YmUgc29tZXRoaW5nIGxpa2UgJ3NraXBfd2FpdCcgb3IgaWYgd2UN
Cj4gd2FudGVkIHRvIG1hdGNoIHRoZSBkb2N1bWVudGF0aW9uLCBwZXJoYXBzICdwb3N0ZWQnIGFz
IEFsZXggc3VnZ2VzdGVkLg0KPiANCj4gVGhhbmtzLA0KPiBUb255DQo+IA0KSSB3ZW50IG92ZXIg
dGhlIHNwZWNpZmljYXRpb24gYW5kICdwb3N0ZWQnIHRlcm0gaXMgdXNlZCBjb25zaXN0ZW50bHku
DQpTbyBJJ20gaW5jbGluZWQgdG8gQWxleCdzIHN1Z2dlc3Rpb24uDQoNClRoYW5rcyBmb3IgdGhl
IHBhdGNoIQ0KR3J6ZWdvcnouDQoNCj4gPiBSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25v
diA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+DQo+ID4NCj4gPj4gICB9Ow0KPiA+Pg0K
PiA+PiAgIC8qIHJxIGV2ZW50IGluZm9ybWF0aW9uICovDQo+ID4+DQo+ID4+IGJhc2UtY29tbWl0
OiBhY2QyYWJjNTJkZWE5MWMzYmMzZDFiNmRkOGE5MmI5NjMxZDQ4YmJmDQo+ID4+IC0tDQo+ID4+
IDIuNDMuMA0KPiA+DQoNCg==
