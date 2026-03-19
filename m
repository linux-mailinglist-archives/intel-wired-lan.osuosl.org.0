Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aN3RBqYivGnQswIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:21:58 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E29F82CEB10
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 17:21:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F6E660EB7;
	Thu, 19 Mar 2026 16:21:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gauXb1sx8O9A; Thu, 19 Mar 2026 16:21:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A03A76100C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773937314;
	bh=8uFbHRUMP+gHkhUyFZO29P4AJ3hOrAkCNLX2hFfUnZM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7O1buCUnlJ5fssKH37MfcROzX/6kKhkyQFbRfx/m1Fbrwp32xIQqNtr7cR19mM4d2
	 J7xsi8JJ4hCuCh/xpRbwWEt9oXmDvPqfxVDjvtLJl13GVRpKufjBtVsIBBEit2rR4Y
	 l0LNsxaB7/sue88qFi4herFD7EAV3ELuHmbOiUihnhc3yIriYb2GZSciuHGptsk8wI
	 7sz/XCgxA+iqECroZzPlj7Zj334RRFofwISSs+susXBNbyDNUqOU6uHI65akNIZNeY
	 3q0CCAPPi8Ue2r3v5YOKgCoD3H+sCA30m+IGJWRDBv8altNghymlX7t/v2KhwNIxeI
	 ul7y42DfOH9cA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A03A76100C;
	Thu, 19 Mar 2026 16:21:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DD1FC1AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:21:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CE7EB40A03
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:21:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Uasr69vLwEuU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 16:21:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 01B404094B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01B404094B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01B404094B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 16:21:51 +0000 (UTC)
X-CSE-ConnectionGUID: l3Y1+PQDQp+fH/fRIBwHbw==
X-CSE-MsgGUID: kKNQsvfDTwW9sIDo386HBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11734"; a="62581907"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="62581907"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:21:51 -0700
X-CSE-ConnectionGUID: JVkE0Xu+QYuASNKvijBgDw==
X-CSE-MsgGUID: ihePM6KHSlm8e+fasqaARQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227127949"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 09:21:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:21:42 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 19 Mar 2026 09:21:42 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 19 Mar 2026 09:21:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QYXzsX/Kjw47IQKBlaUiO8fCiYUtFdykwAOdh9jULUiTzEZj5HCCxgrbNkxZZpzmMbtdxKcOxhN9Oj+uTSiuFXdYvXe/RTLEHZ+yL72ZQzegepgweYO/qhfvwVCABM8U+56ZUShLR/PFYu0Lo+n8hFa5wyOMYzaNRPvWdRbfEJpcG9kAF2wvcbhVEvhU8tX73NzBeE+P8VgRmVR7n+EvW8iVt2qlmFSIRIvfMnob+gEksXeTjF5rIC/8bPUBVcqntuFCwF/Ay4PzrsWBKvvmkpLv8tlgVn9GaFID7hKcj2/GvbXXjddTl53QzzSXfbt6whfC3r8AvM7J7exqYw12aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8uFbHRUMP+gHkhUyFZO29P4AJ3hOrAkCNLX2hFfUnZM=;
 b=FQpmj+3KqanDlD3/OWXypB8FtssT6shQQykuB+nDt/6v7EzXl+z2kkpuE0T5vzD47iKtvn/+XObOAXQebAzhBgNU6mCHkrap4aRYHCTeuhY8EELZ+z7Oz9b+Tr6LclvEIGKSjQffxSqSDOnc7rvpO6f4P1j4597sFHdQcIKe0Yp2/XB8dQh75VGel2ojOShGsZ+IdE0DTcU6hqGWmJeA4EtilU9bl75MCBOvBVmOvEyK4q7oQlDEChGxZMdePQDihLHlzumrcBzt4Okn2cExnl7W0NbuQIpX9qBgDS0c4UC2Pr6FbXGRttzm8TpnTd/yxo1yqTncPvCnFlHFeGnzcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by PH0PR11MB9521.namprd11.prod.outlook.com (2603:10b6:510:3b1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.9; Thu, 19 Mar
 2026 16:21:40 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9745.007; Thu, 19 Mar 2026
 16:21:40 +0000
Message-ID: <96c9344a-9102-40b8-94bf-ad6353e985b7@intel.com>
Date: Thu, 19 Mar 2026 09:21:36 -0700
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <bigeasy@linutronix.de>, <clrkwllms@kernel.org>,
 <rostedt@goodmis.org>, <linux-rt-devel@lists.linux.dev>, <sgzhang@google.com>
References: <20260316232819.6872-1-emil.s.tantilov@intel.com>
 <20260316232819.6872-3-emil.s.tantilov@intel.com>
 <CAODvEq7Ty-D6MPeS0r3077jXWMX0i9yp3UB7d+mnGTaQGegH-g@mail.gmail.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <CAODvEq7Ty-D6MPeS0r3077jXWMX0i9yp3UB7d+mnGTaQGegH-g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0040.namprd04.prod.outlook.com
 (2603:10b6:303:6a::15) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|PH0PR11MB9521:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a01f33c-b35d-445b-c372-08de85d399f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|56012099003|22082099003|18002099003|7053199007;
X-Microsoft-Antispam-Message-Info: 0aWTHMCmUAiTvj644oBZhXa/dgwoBZtamhK9hS/Y90LKnHtP3OnTY2Xx1NXXOk2HfV4y/n5KmHwqUn9TF+jT7zFaFiqYiOIIVKbV9bxtnZTFXIQ0b5DhQB5hevjOEKONmbQNy+eDz6DsbdoTa5FFjm9UqyMXHnsy9Ux5UcgY11CbRh+ODtOu0k4gTKVMlYVwB+L2i0qmpsVgMS4ENwbV+7xEEmQbogIftShwbdDc07+zLLZXH36a5InrP4wtBUus7k6Kf6NxNCUBCm6/WT/l43Chvoe+VbInrNsf9Z/K/qakEQ3MuJpXHr8xLeAiAnuewT1KML8ax/3khBcbAkMPi0O6N2haBQ+/nQfESmzbR4dnlNEtlvBQ6YmY/bG+eVj5U7JfKpQNhci59McbwyvZKh/c3sf10P+EB6I/x59W5RQfi4dU58P/f3FH4Ay4JD41vaP7H2/WfJ1EdluCNEicPYzNCU8JhElcB2E2Ti5eapzwTvrUVrrFqmT/vLxDOgyxMB+8xuschjjIsmOQBxvVjYCBnwx4ixZ2wYb5+d7rSAMltHV7WyLbCUT6mU/5m/eZ4LE7UiXR+8I0vD1eVx9HwonSHB4dVjOJzHSN1V9o3L9KwIm1TOeNKDeVg/CWU1W1XvmTDklBYWdXvKRKP+dCsUuCIt7QGiPvVJTW1Mv7G0RSa7ji7q+rPMJkgq63k0PIybcbje7ked0/mEe0BNtfHw4hjS8/ar+5B5RHshl4i40=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RFJOZHdHdTJncFlQcGVhaHlwU0ZST0RScGZaOWhjWFdOc1dsRndXbU9mRjA5?=
 =?utf-8?B?SUZnV2RubnFpaENYT0JYSDlsVFk2QnJNV0ppQnhHTEExSXFMR29tSFVoU1p5?=
 =?utf-8?B?NUFmR0FRVWN4M1M3dGI1dmQ0U0g1ZkZjUnBjZERZQzF3YlpQLy9OaFRqUEQ3?=
 =?utf-8?B?OUhKdXlWaE1XUVU0cUdYSjkzUWhZTjA4b3JSWXplSlQ3SWRuVjBiQ1VXMjRp?=
 =?utf-8?B?Y3JBM2FyWXQwRzhTZy9XMEJWcUdHcmJ0OHczMEJJSktqbENXUXB1MWc4anBP?=
 =?utf-8?B?TFFWVUxwUmVKVytEaEpIZjQxNzdjK2hSSjk0VFY2Ly8xVStaWjVkd3FMb0t3?=
 =?utf-8?B?bmMyL1krRndxajV1TGcxcTBON2wwNDZuaTdkRUlCcDc3WHNKNjBzbUV6QWxI?=
 =?utf-8?B?ZWFVb3liNUdESDl3cUgxbFdueVZ5TVpZeFNyMmEzamxWOVpDMlMwbHZCOVI0?=
 =?utf-8?B?SlNNVTg2TGI1aFpDbytoOFM3VTB3U0I5WEo0L2FDV3VmQjBpb2V1ZkNqbkRR?=
 =?utf-8?B?UStnVm9maHh3SlRFL3lEZ0FNMElUUWMrc2lrTUQzMzlIbWhhcmRDY0ZoNVYv?=
 =?utf-8?B?NWhVSzBtYzZ6SjVIVFRoT0ErbGl4SzlLamY4OGRXVEx5RGNIMVFlcmNqZ1pm?=
 =?utf-8?B?T09XeEN5ZjdnaE5XV3kranE1M3FPR2Jld1B1bnEzbU9pS0ZNM2hHRFdTUUJI?=
 =?utf-8?B?MThsdmdjdGtmS2pNREt2cHh2bEFKbzJUUnZJUUtPUE8wYmdubTFiQVZqd1dl?=
 =?utf-8?B?dHQvYmNIemVEbkZsM21YTDZibWl2MXh6U3k5ZExuYVMzZGc4V213OE9VaWto?=
 =?utf-8?B?dVQyMDczNFZLNlJNckYzWnMrMERlWUlNRnB5L3RoemlNNDAvQjM5bG5rclJM?=
 =?utf-8?B?ZVNpSVlUN0UrZTEvTUNQWVpGQnQxazJVbXFRcjlSTlpkNGV4eHg1VS9BQVFv?=
 =?utf-8?B?MmJIcmJvU1MycUpIcnJaMWdOVVpLL0VFSW1mdWNiZ1VlYzQ0N3RlaGw5dUJZ?=
 =?utf-8?B?VmdETllMVEdUYzRpeGRMMEhSVG91bGdWZFZCUlZ0RDdqK01qMjVzQ3BjTnI4?=
 =?utf-8?B?ZjkvMCtCbHFYQXhSYlduZTR2aG9BRWxHQkdMUzQzU2g3MG9TZTdhYkI4Sk9o?=
 =?utf-8?B?UlY2VlY3VGFYZ2VzN1FGM3B0MUpwd3JVZ2ZTYWY5Tm9RY0lpbm1aZENkanUx?=
 =?utf-8?B?Y0hsWnhZSS9ud0pWb0tRSGtoQ0VPNHYvdGl3dTcxc1BlMlh1OUZDK1ZnM0cx?=
 =?utf-8?B?MTZTb2krMnRzMlFYczU0MEF0UTB3QnUyWHllQk9WY0hmbTlrVzIwR0pHNng2?=
 =?utf-8?B?ZFk3ZXlkdlBSS2w3ZXJzSVZ1Z1c3aUIrSlZ3eGNvQ0tFQUUwSlhOVnE2elZn?=
 =?utf-8?B?L1hPdXRwT0d6ZmtDblhGcnJrU1dXNVJzelp0bmM1TE1jc0E5L0dUVDVGUkVM?=
 =?utf-8?B?UkNrWmtsdCtaZklvUXRhQUZLRFBHZlB6ditHQ2NMU3REWE5tZVBwSEZUa3VE?=
 =?utf-8?B?ZzdWOHFRL083NWwwaWVyK1A1RW13dHBwS0dOWjk3TEpxaHNBTFdRYjlSMzdX?=
 =?utf-8?B?TjZJZlVNcjNwRndKWmllNnhndzJaK1l6TTBISVRTQXJ3SE5ZNlhLV3JtbTA1?=
 =?utf-8?B?MjhQaGpxMitlMFhBa29LR1JNblFYRWx2bUVkRENUbUc3QXRib3hTWXYzbkli?=
 =?utf-8?B?UVI4M3hteTZjZ0Z2cUkvMHhzbno5dWErQUE2eVFtQUovd0g1S0RPZGU5TnFr?=
 =?utf-8?B?TFBBRlo5RjhxWEVsYTBaMlZmblV0Lzl3UXhlT3VRY2VtdXNnRXhGdTVlcmJv?=
 =?utf-8?B?UTJjVGcwN1NlNVZMOHZPc3IzaTJoQWVNeEVtdWlLajZaM1JneVgzMW5VMTI2?=
 =?utf-8?B?SFlaRnEzRGFSMmVaeS82cnlHZkpFUTFVQ3lnajZISERSUnI4dGVUeU5KT3hl?=
 =?utf-8?B?ZEtYVHVoVEJQdHhBM29QZnZHbUcyemJBaHFSb3BWNUtqRnU4NDRjd0ZxY2Rt?=
 =?utf-8?B?ZU5qSVdkK1I0dmNWVWdZaktnaXJ4cHY0bEhMM0RYc1l0NkQrMHY1dldNeVFy?=
 =?utf-8?B?cVZpL245TGtKQnViQzBLdmRPbGNSTVhLQkdubG1uSVFieVZPTEo3YzZaNmRu?=
 =?utf-8?B?WVpwT0J3UWVnT2VzOUNET3RubG9NT0trc1Y1dGtCZE5RMXlMRU9EZzVrT2FR?=
 =?utf-8?B?UERDRGRoNFJ1b3h6TitsQ1N6dWk5L1FUaExmcXlRRm96bHlsMkVsd2JOQmFy?=
 =?utf-8?B?ak9kR0tyUWNyUTJUUzB6cU91UmhvZ2h1bTdBRGNVcTg1eTFkRU5aNGJ2Qk40?=
 =?utf-8?B?Rnp5OU9ZK3B6TkZGMDJ0bWozalZvZlkzNmFLZVVlK3RaTHJYQlpJeUNxK2Vo?=
 =?utf-8?Q?z16netG2rbs0kLWw=3D?=
X-Exchange-RoutingPolicyChecked: AMZ+f792SutnwSph08AvWFRZYYtDuI11jguBupzGWLOW9W6xWxay7sNeOOhAR13CADzMqIZtmbcYAAIW+EyPQH/Kg+qcRm9XTJ58/Fqp9/XRJ4/MoVRvy+mf/DwEQbDM0Fg/fj5uVF8btw2FPFF5jnF1SgHAMsoWOftE53IhaiyaUA6B+4U4wfDpw+0zXz6657yZB4SLPOcoALPK4zWrrFc36RRXVIK52W0IUM7XqDotLw5KhKhcTWgnyLGwUIVe9cmMtL888y+pcM/pBW/7bfG03CCEDsgHrj8zuAx14Q8HB7615bWHSkLMItiRv5gluRYorSPXy9AuFtQHahtDrA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a01f33c-b35d-445b-c372-08de85d399f6
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 16:21:40.3165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vEs3mox7l2ZhpsLIBfP8zPDomoq0TNEBQOcy7P5PD4s2Npdc/BZVaqB149fCR9V7yKd5ZO8yzXsTmQ+pq8+zkvZMwcsQNyHQNlXTu5grpCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB9521
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773937312; x=1805473312;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HffcZ0tVn0af8+hkqb+ieTt/2xoKHKX0/b2U9SfS5AU=;
 b=cszJX5OtEvwee8rJWgKX7jr+97bBvNPJ1UeyxvqTRF5y0ZK6PMswFEHi
 4AG/u9G9NrVqcHLyBk8Yl4ww7RmAdBqcnlt9T+44gTWDx9j+kDvFDtOOk
 JhkKsRtTX39MUoB0n+JyS58A7FdxEcEq3MhrSedu/mEdFCS2DWwt9g1L1
 Pjejqf0PqMNXJMCUrjybBVpJNhCkGrhez2XfYI3Lu/RNm0WAKbuzCbm6I
 RGzRND47Ydcvm2TR533YpSej2uIZasxfo2OucCPgoohxAIVIS7wTCv33V
 YG8ikXWX4TgtOsW+J33C0zsLFj/m85GyWo5vdHFyFg0bTEg8afoHmQ33V
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cszJX5Ot
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/3] idpf: set the payload
 size before calling the async handler
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:boolli@google.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:bigeasy@linutronix.de,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: E29F82CEB10
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 5:11 PM, Li Li wrote:
> On Mon, Mar 16, 2026 at 4:28 PM Emil Tantilov <emil.s.tantilov@intel.com> wrote:
>>
>> Set the payload size before forwarding the reply to the async handler.
>> Without this, xn->reply_sz will be 0 and idpf_mac_filter_async_handler()
>> will never get past the size check.
>>
>> Fixes: 34c21fa894a1 ("idpf: implement virtchnl transaction manager")
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 21a6c9d22085..6b9692b30040 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -627,6 +627,10 @@ idpf_vc_xn_forward_reply(struct idpf_adapter *adapter,
>>                  err = -ENXIO;
>>                  goto out_unlock;
>>          case IDPF_VC_XN_ASYNC:
> 
> Optional comment: could we only set the size if ctlq_msg->data_len >
> 0, in case the hw returns some invalid values?

0 is a valid size, but event if it wasn't the async handler already has
a check for it, which is how this issue was caught (see description).

Thanks,
Emil

> 
>> +               /* Set reply_sz from the actual payload so that async_handler
>> +                * can evaluate the response.
>> +                */
>> +               xn->reply_sz = ctlq_msg->data_len;
>>                  err = idpf_vc_xn_forward_async(adapter, xn, ctlq_msg);
>>                  idpf_vc_xn_unlock(xn);
>>                  idpf_vc_xn_push_free(adapter->vcxn_mngr, xn);
>> --
>> 2.37.3
>>
> 
> Reviewed-by: Li Li <boolli@google.com>

