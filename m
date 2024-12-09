Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E50B9E98F0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Dec 2024 15:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C0C1660836;
	Mon,  9 Dec 2024 14:32:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfUkqoKltspF; Mon,  9 Dec 2024 14:32:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D891160845
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733754742;
	bh=vDseUQApSViI2IEDRjpHMH9QPokkOsBjP5ZAKQ7JCoQ=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aydN6IIeawecUkbDM6byqdMK8dCU2HlAPE8OG14nMl6MnaiK2sw3LBeMygmyG0uMT
	 gaFJ2Iijhe2AEbFFz3uwx04LQTbLLYarbQwFmlnhnjumudbprV8nPM/1EIJ/tYfXK7
	 dQMfTfhVtK5dUXcGCDTp28yaR4ldbClgvxhQnYLHJUhBXllUg+AjfUs22lKBey8UFg
	 uPcoJmrVK17aPECMnKXvKZvMDQi/oiBVqzq0K9dnLjHsHlDmI1MCPEcsD4T8Dw3KBY
	 4gdBiESFqeZ9jf+FXNuIZeDHlj6p65Exmsxs2ugAgv6EXDKP4tleKIghTP8Cp7H8Tb
	 /JqrDs/u/+NNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D891160845;
	Mon,  9 Dec 2024 14:32:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5205979
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9EDB6404CE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:32:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yeksD_745rVt for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Dec 2024 14:32:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6079C404CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6079C404CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6079C404CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Dec 2024 14:32:18 +0000 (UTC)
X-CSE-ConnectionGUID: yl2qSEl1RQShD0kYsn6wIg==
X-CSE-MsgGUID: om9EdTmBTea/Qnqput4AfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34180361"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="34180361"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 06:32:17 -0800
X-CSE-ConnectionGUID: p/p0F5fYRmuGHV/AX0bpUQ==
X-CSE-MsgGUID: Gm5V/qGAQzSQHNqfI8/COA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="132464486"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 06:32:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 06:32:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 06:32:17 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 06:32:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t27DEQ7FoScJ49LeqZ6/RenZNJMbiPul3J85LzithLawQXumKojIe/U0As2ZowO709Crz+OT3tEdmZPhd+oSW3Z/f3GgRW5wxDrim3LI4udAhzFHvzXwOydgIYMdZiihk1tPVRoiWOweoYzNUbqYP8aiUpIf/9prysSSZbsQIrCt40NQhmmoB3sb9uX9fzW4zqPKK0JCycKd/XAaX8CwHFoSqVZExVTr/Q7ZAuOrAR6XdcVbWJXIXsgKAjrY0E+J5JS6hEq/X+yJ9tkN6bxBFVWvPySLwELrAw4puTk/fchVX+TSfMwD6f+4MrlheZ0xTEGNVRGS+jMuqSGH0Tx0Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vDseUQApSViI2IEDRjpHMH9QPokkOsBjP5ZAKQ7JCoQ=;
 b=XR4mQx9Q9jKegSeJsAFJYHEL4UTgLE2oghMdGbdfDRdaLQBtFnP3yD0TE96SyabVPYmbgNljIDw5KXnX8dC9TsXpgt+PWSHRwuRNCE3VEh8vDtyQICWB+C6e18amww1WOsqQ9riwHK0joajxA5B95eanRZ5DAYaqgrPnHjlL44ZCyoQTLNfoqFDkN828qWK0B9PsXjPs/gRlY+jQmRa/mLlJE5koLaHO1vvbwqwiwwf15+Yvh72HwvxSGe/Xfzk9jIemghzLzy3+JNFEnFTi+vgTP3JSfw03IRWz22/Ydq+DFdgguz9ku9Q0ZmIoErxzzDw3wTKujSWvH9rvp7vGLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by SA0PR11MB4573.namprd11.prod.outlook.com (2603:10b6:806:98::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Mon, 9 Dec
 2024 14:32:13 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.8230.016; Mon, 9 Dec 2024
 14:32:13 +0000
Message-ID: <0d8531bc-85b8-46da-a366-1a194fa83584@intel.com>
Date: Mon, 9 Dec 2024 15:32:09 +0100
User-Agent: Mozilla Thunderbird
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Marcin
 Szycik" <marcin.szycik@linux.intel.com>
References: <20241204150224.346606-1-mateusz.polchlopek@intel.com>
 <f684e517-19c5-4dd9-9de6-34aefe289552@molgen.mpg.de>
 <ee75ce57-bcac-4e23-b35b-bbeff50cf460@intel.com>
Content-Language: pl
Organization: Intel
In-Reply-To: <ee75ce57-bcac-4e23-b35b-bbeff50cf460@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: ZRAP278CA0007.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::17) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|SA0PR11MB4573:EE_
X-MS-Office365-Filtering-Correlation-Id: b0eedfd0-3a26-4097-769a-08dd185e45b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEU5UWZNWElTMnZsbnBWdTlxQnEzemVxL284alQrSnZMZW5LeGFqNlQwTEs2?=
 =?utf-8?B?Y3Jra1M0NGV6aUFDUGhhMjBNVDMwejg5VHBpYnVEUCtxREEzU2lCZXJ4NE9M?=
 =?utf-8?B?K2htNnN4NzgwYmlweUJmbjhoREFzOS9jc1VPSHNQM2w4enBFbXpVV1Vkem5R?=
 =?utf-8?B?dTZ5Z3N6WEFiYkcyRHhNUjZNTVEycWd4d3FYQUJRcThpK0ZMM09FMGhPYWNx?=
 =?utf-8?B?TzlBSkNTVTZESWxicGM5Wnd4czJWRjZjblJuSlJNZWxkbnZ4OWxoaUhnUHZt?=
 =?utf-8?B?Ym81ZmU0b1NaK3JaWTFEY2NjUlZXTkVMbk04dzVEVzNMVjFFcnJ1TkV6YUh5?=
 =?utf-8?B?YU1yTUlLcmJ6WlR2b3N6NTZBYm5VeFdoemtES3ZpbUNhbWNFb0xmMG16S1E5?=
 =?utf-8?B?Q0VqYlF0bGljWDAvcVIySEdBOUdmNmRxVmlrT2dsRU9Hd2hUVUpiOTlOamU4?=
 =?utf-8?B?TGcvRzc2enRqYTRWUklvQVdIaDhwRDZNSTdvTElSQTlIeEplbS9CMkQwK3Mv?=
 =?utf-8?B?ZlFlbEdmV3pHdlM4c245QTFRaGlpU3Q5QkdQb2txeVVTb084dC9MMEl6U25K?=
 =?utf-8?B?Zm9aTlhmaGJTWFZPU1lqRDVnR21WZEV3Z2phajBZcjlHYXV1U1prVzc3WjNX?=
 =?utf-8?B?NGNNNTdwbUFBTDJBUE1zMnZJZVJDaTF2QmplL2tFZXk3YlRsaVo5ZnNaMDVT?=
 =?utf-8?B?cDFaczdhelNiaEMzWmVzTFV4bzJaMlYrM3RtMHF3L05FSHJIWlNYcG9JNEV2?=
 =?utf-8?B?ODVsU0hyVmI1SDFWZVJMZ3hGajA5cDI4M1NzVEZYRDFkeGJkeTBoRlNMblhX?=
 =?utf-8?B?Z3JId3lpK2dndzdFck0rMXd1TDlDaWZZdW00TUg5eml5VTRNS1l4VlFleHp1?=
 =?utf-8?B?RXB2ZmMxTW94b1J2RWl2ZlZGd2hyN1RJS2FOMUVYKzFLYlV2MXVHVlVJNk1t?=
 =?utf-8?B?R09ZYUlxMXRaNTB1NjgxWHBmcVVUMk01NWI4WDZXUHg5cHRuSFRkcC9uVGE2?=
 =?utf-8?B?RGxGdTZxU2lKcmtOMkRoY21JS3JvSHVmTGg3dHdhVHQ5MU1QcXJpa2J3bmVO?=
 =?utf-8?B?bWNsRjVoQjdBZ1NrVUlzQ0kvcWxUVXhMOXRQUzR4TjF0OTF0d3RsdHBYZUxM?=
 =?utf-8?B?T1dFVzV6bWVhVy9MTytpN0gxMEk3YzZoRGdMRDR5aVZQdkQxZk9hZEZVblZP?=
 =?utf-8?B?aStQaVFkMGlaZTBwLzhOWkVkY1V6WGZFUXFMOTdhYk1rdkFRN3hKcWNlRzJh?=
 =?utf-8?B?K2l1ZU9DMXF4cGF0L0V2Ym9SQkRPcWFDZlp4TitSNXllU05POTZIempoWWJl?=
 =?utf-8?B?aUpud3ljNlY1RU43R01qNmxiRkNYRjBVNEUwYVNiZyt2b2hkajc1Ym96ZzFN?=
 =?utf-8?B?UWhvYjlSY3JURW92Tk9yV2NTREM2c1BoZkhPczg3bHgrU1hpYnZiNEl2N001?=
 =?utf-8?B?OTFDNmgyUVJscUFDSjZaMGxxVDhDRUEydG9JaEpUOWRJTWJ3YWo4SklTelgv?=
 =?utf-8?B?M3FBUGVCN1pzd2ZHekZWT2ZQTGM4QXpYYmU4MjZsOU8yWTd4YUlod2xGTFhk?=
 =?utf-8?B?c3ZCUEJ6M3JydllLYXZ0YXBwamgrUHRXYytXbmd6VFplNGhRQzIyM3B1Snll?=
 =?utf-8?B?d3dHTnovK3hwdnljd2I1c1VsREpyb0ZHLzRoS3JWR25lZGN5NWY5bmVkZlJy?=
 =?utf-8?B?a2pPNnJoYnplNW41Mk1ZWjBCdUJpR2RmSC9IcUlvRkd3NTRxSDg1VEtLZE5N?=
 =?utf-8?B?WlNFbVZtczM2bHg2Y0xRSDhZSEJqZk9CQXBqUmovNk9jNWZnVG0wNXZIRXJZ?=
 =?utf-8?B?WUxmd0NteCt0elRxaW9ldz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlNwQ0xNRmlTVFRZU0NpTFlENExya0d6TkNZdXFYcE02YnY4alF5ZUx0N0FE?=
 =?utf-8?B?eHgzdWNDSW0rK21xUVYzMnN0bXRNbDM5b3JaYTBlTS9lVnZsUWVicWtzYXhV?=
 =?utf-8?B?RFZYK3YxRm41Z0lvTi91RlliRmtxWmdXcEd5M25BUFlZeGF1QWZXMi9KbTA5?=
 =?utf-8?B?ZnZIb2l0SHYyTUc2bVRtODJVUkFhOHlKVnF5ZzRmWjZHcTc4ZXpmZkE5bXE1?=
 =?utf-8?B?ekJCc3RBMm90ZU1pZ04vdVdXWUhMV2ZoQUNoeW9SeWdkanU0U2tOU0Z1SXBH?=
 =?utf-8?B?U2FDY3pmbFRCQkVpV2ptR3hIMVBBY3FJRTYzL3dLeEpJb29INzY0NGdjdUhI?=
 =?utf-8?B?NGhodnc2cUVnd1puZEpZMUwvTk5XOGdmWVJtNnM2Umx3cDc4eEVIS3dFb0Jt?=
 =?utf-8?B?SU9pOWVEWVh1RnNJOUNFK0ZSOE1UTHZKbTRxWExWbG9UcFFxeloyd1F1bTB6?=
 =?utf-8?B?NW1ERFFvRFJ3S0xVb1dyNG9pQnpyWXh5VzhpNTA0T0huMHI5cGVPRUVQUDBs?=
 =?utf-8?B?a0VFQlNSeVlMU1ZkY3BiOGJycEViNzRpT1ByYVhKUjZVYU5XYVJyZXlqd0V5?=
 =?utf-8?B?TXV4eXoyTlAyWWNjSU9tc0NqbmZNSUFFSGdWcmlFSC9QZ1gzOXJqQjBhTGlx?=
 =?utf-8?B?cnRobzZSWVNKclJYRTI3aW15QXpGbjNBRHFaOUh1YUdQbzh1Z2IxODAxZzVh?=
 =?utf-8?B?VG02KzJTaW9tSVU3ekF0S0wvYlI5R3FJaXFkMy9SNVV1K2RrdjQxMGtybW5q?=
 =?utf-8?B?Y0xYYXFhaGxIWVV4ZmJ2YTJaZnhCamcwS0M2czVOWGk5dDJEbnVjVDBacXRo?=
 =?utf-8?B?OFQ1QUVrYy9sZGtvQzVWQ3VNNVJVRzArTkY0WHcxb1dtYjlXL25ZVkRpTnA2?=
 =?utf-8?B?d0FyMkxPbFBtMS9PaFloVG8zUXFDUU5KNU1LWXdRRjNyd241Tkg5eXJGSStS?=
 =?utf-8?B?ZlpNekVCQWhwendYU2dDL3o4TStVQnI2eTgrKzFLZUdKc2lZTlRBK1dRakk3?=
 =?utf-8?B?RXNXS01ucS9nZEV0WXZOVmxCaEhSN0ZlbWpHdm5yL2xBalNxLzJ3VU5kUStr?=
 =?utf-8?B?Z01tRTFVcUxtdzNKOFJIdWxOaGNrTHFsLzN0VTFjQnlDaFpCL3kyMmRJVEZJ?=
 =?utf-8?B?SWVCNjlIOXdJZkJOa2ZjRnk1cFBTWnBUWFdjQ2NURm5MUTRqT2xIdTBHcTZQ?=
 =?utf-8?B?Y0VRNDB3MHhMZ1JuUkUvclFKbUZ4V2JNV2NMS3pqRnJPM3E1c2JDczV1Si8z?=
 =?utf-8?B?RTNPWmdHQTJJd2tmOWJLVWNtekhnSGw1R0F0TmQvaUFBUzFYRmhOLzdVQ1p3?=
 =?utf-8?B?S3Q1NUU2N2Z4RDA3cnozay9kbThWWlNzS2hZRDNjNlhsWEZyMjZnTUt1eGo4?=
 =?utf-8?B?NjloUU1CdFJDZTJjMEhFOGY1TFl5SFFFWkhEc1VvMFMzRy9OVDB1YmxHNXJ4?=
 =?utf-8?B?MVluZ254YUwySFpuNk5KRkdid1haYVQrdG0vS0M5MDhEOU1XRlpoU255TVNw?=
 =?utf-8?B?WUh3VmxaSWZvM2cxcUJHaFREWTY1RGZ2UUs3Tkt3ZmowS2ExTW5GZ2xkazNz?=
 =?utf-8?B?a1dNK1lVT0poU0dsVnBoWGhsTzRPcGlrdlNneHFKVVpqRkhId0NCQnNyeHRr?=
 =?utf-8?B?SXRNbUhKSzVPS3dOZWlYeVpyN0hWd0NOUnZIdldmZ1FtWFRaN3ZrVUQwUHFa?=
 =?utf-8?B?Y2d6RE5xeWFTMjJ5U1dTSHpLdmhVcmEvUnphV1BLUFJwRXBENTdIck85R0ov?=
 =?utf-8?B?MHFydG9NQ2d3RmdzUHRxVlRFU05CYWNQb0ZyZDBRcUVKZVIzcGNid09LQkQ3?=
 =?utf-8?B?RUx2Q1VhQnRKLzNPL0pObUMxTjdIREhnQXF5RlFLQndWWHhFUGhXNnlSZFAw?=
 =?utf-8?B?MFExbU5pNGtUYWFTZHRZUWFWV0V5VGgwSkUraVpUYTBiWUZta081SEw4Qnla?=
 =?utf-8?B?eWU0L091ZUF0U0pwaHo5VFZQRU9YaCtRS1lobTIxQnVuaVBqaGd5WnlPYzF6?=
 =?utf-8?B?NzEzYnRtY1ZYUXBPRXZ3QjFEMjVRN2tzU3pvd2MwMFFMTWw3QzRrVW1VWFZa?=
 =?utf-8?B?eGFpSDVPS1JsdHJCRlRqWm43NS9ENWJnWlNOeGJyT3BDTVRTMjVwL0tVWVVw?=
 =?utf-8?B?NStXWC9xTy9rcmJuS0x2WUltWm5GNkJUQkp1UWR4bDNCVGQyaDI5M08yald1?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0eedfd0-3a26-4097-769a-08dd185e45b6
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2024 14:32:13.4487 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6THzug3u9DZLSFpeXzQ8mq3sGg7GTHUeUSHmmd4vSts/USMLd+hUA/lnC9kX7py/Jo6tglGql+ZPq6gYtfgAo8GPIHUFQ2xuIhmTc7F34AI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4573
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733754738; x=1765290738;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZaLim0rJqcX/Cxl7OWGcWyCVvAAFJkkDwx4+/vZj7Qw=;
 b=hiDGek/cS2EyvikWJQViR2W0ewqw2Qxs2wEMn3hdBiLv8As2TGMrKOSb
 tiwIBKC2iXCn0gicVmM4UbLzq+8XZsoJnp1QJRO6IUXk4VWQkjHv6OjUr
 mmwdYyGMhjvLtN0ikF/PGeHfxCQREoGRl/3+h+vcrXppQlGE/tMijhauw
 CcgyZ9fjYDLs+doH5utCO48B0OMRUv0PoX5W2wCwK6HjZnKAptVcVEXIb
 mnnXDC59a821HBQAd+WX5C7oN1gf0y1+Uy2uoI3D4HcDF3pI2p4/f5Be3
 jOtG90Q7ZwtghkfLC6F7Jo7kVGWTgVvqGcECpQletkxJlohrVM3E2p5XB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hiDGek/c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: move static_assert to
 declaration section
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



On 12/5/2024 2:18 PM, Mateusz Polchlopek wrote:
> 
> 
> On 12/4/2024 4:05 PM, Paul Menzel wrote:
>> Dear Mateusz,
>>
>>
>> Thank you for the patch.
>>
>> Am 04.12.24 um 16:02 schrieb Mateusz Polchlopek:
>>> static_assert() needs to be placed in the declaration section,
>>> so move it there in ice_cfg_tx_topo() function.
>>>
>>> Current code causes following warnings on some gcc versions:
>>
>> Please list the versions you know of.
>>
> 
> Sure, in next version I will add the info.
> 
>>> error: ISO C90 forbids mixed declarations and code
>>> [-Werror=declaration-after-statement]
>>
>> The above could be in one line, as it’s pasted.
>>
> 
> Okay, it will be fixed in v2
> 
>>> Fixes: c188afdc3611 ("ice: fix memleak in ice_init_tx_topology()")
>>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_ddp.c | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ 
>>> ethernet/intel/ice/ice_ddp.c
>>> index 69d5b1a28491..e885f84520ba 100644
>>> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
>>> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
>>> @@ -2388,6 +2388,8 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const 
>>> void *buf, u32 len)
>>>       int status;
>>>       u8 flags;
>>> +    static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
>>> +
>>>       if (!buf || !len)
>>>           return -EINVAL;
>>> @@ -2482,7 +2484,6 @@ int ice_cfg_tx_topo(struct ice_hw *hw, const 
>>> void *buf, u32 len)
>>>       }
>>>       /* Get the new topology buffer, reuse current topo copy mem */
>>> -    static_assert(ICE_PKG_BUF_SIZE == ICE_AQ_MAX_BUF_LEN);
>>>       new_topo = topo;
>>>       memcpy(new_topo, (u8 *)section + offset, size);
>>
>> The diff looks good.
>>
>>
>> Kind regards,
>>
>> Paul
> 
> Thanks Paul for review!
> 
> BR
> 
> 

Ach... It occurred that this is not the problem with compiler version
but with re-introduction of the -Wdeclaration-after-statement flag in
my test setup :/

Nevertheless this move of static_assert is still considered as a good
practice, so I will send v2 to the net-next with some other polishing
of code as an improvement (and I will drop Fixes: tag).
