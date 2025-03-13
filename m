Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD60A5F61A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Mar 2025 14:39:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C07E80ECA;
	Thu, 13 Mar 2025 13:39:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Tpg9FdNN6_U5; Thu, 13 Mar 2025 13:39:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 847D180B4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741873164;
	bh=tJLTjr7iSBQEnttUf5x9E4XotrK4tCblU/ifwU0KQHk=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zQNkJRD3SI16HORgq2uP2Q3XBeUPUC+zXWvVWfFXN87Z/2xArzTtzYN8qEhCaJxvf
	 26qnF219WXVF99XRQBTvUqzhh0YSoSeYzp3A6blWVkkRmdDCcOsCdjWrj3xnTmo54V
	 YISxXIo7TLeGsHZyfzfsbovHXXbZx1c/Jj33LfhI2TOdMXXyj9NySP6go6kIrjpA2Q
	 RMhFuoL/SrvqmRZLADZCYjx2yWX1IkS3Wf4BgTPtnPE/bnImOVyaVBB0bWtlSHTVtU
	 DZikhDdkgSMoqjzvjLZEbMnsGMQqbjaRcx8HTzypkyjVF0+/jT8WocJhQEqW/eDl//
	 Xe0SchNP5Sk9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 847D180B4D;
	Thu, 13 Mar 2025 13:39:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 48765115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 13:39:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3634640574
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 13:39:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I2Zp9Xl1c1Cm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Mar 2025 13:39:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.20.50;
 helo=eur05-db8-obe.outbound.protection.outlook.com;
 envelope-from=vladimir.oltean@nxp.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1147040012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1147040012
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05on2050.outbound.protection.outlook.com [40.107.20.50])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1147040012
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Mar 2025 13:39:20 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aGqEEZllKSeJXrQ0LU5rGuPkWsBXmwH0S8P5k+YLkgiTOxCInnw1YylMdnTcEKQKi1hA1uQfLwVHkziRyQYi2eiVUn6oZbz/HTpksT7KvjkQKfr7si4sgfhD7JcClyHpP5wXFfpUgPq1FBFZpdzfkyCRkcvZgPZ/YParmLDulaZB6Iwp2J2ob2BV73GjupuNqMt6iZZzReTGS3Rb1LS8Y2GMay2bS/Txbiscf1BPbbP2cucG/zrAxOAo3Kd2U7R+yY0mZM0iX1QdRHv5p1hSUCOK2CdES/J46+bSYYlN513tMTa5uhoAl1ckYJanYsnjT7TRZhm/qCrkyw40xXw9Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJLTjr7iSBQEnttUf5x9E4XotrK4tCblU/ifwU0KQHk=;
 b=GnJX91icUtlQJAvMVAuVr7jzOTAdlpgT3hUQ5K+5ocB3qe7bpp9pO7EJnx8tPtSqEb3wMHKOQ1QmRKkm+Z8a5dhZueBTPrXihxXl6sDB26DVMstc9vvMeCg19ZC0cZ/FwQdvK5XLbctS0ki6lHOWmbJB+Eb2lP38OYO81ybBPFhYyfTcvb+L7rKngon2+jdYkjBYQ57+/3dq8+cxGlmoRedXNbkuEsJk/GOsDdgMryrw1ysmu7H0RsO726Au3svglQguLj+m5iWip78pBQUuPcg3WVxa8Z8sISrZ/zgltcTRYkuMs6PCrQ1zqGbeeVlpK4zTKMb+ohzxpDXBjJmZuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com (2603:10a6:20b:24b::14)
 by AM9PR04MB7618.eurprd04.prod.outlook.com (2603:10a6:20b:2dc::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Thu, 13 Mar
 2025 13:39:17 +0000
Received: from AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2]) by AM8PR04MB7779.eurprd04.prod.outlook.com
 ([fe80::7417:d17f:8d97:44d2%6]) with mapi id 15.20.8534.027; Thu, 13 Mar 2025
 13:39:17 +0000
Date: Thu, 13 Mar 2025 15:39:14 +0200
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: "Abdul Rahim, Faizal" <faizal.abdul.rahim@linux.intel.com>
Cc: Kurt Kanzenbach <kurt@linutronix.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250313133914.oqkaihpsl62bmi7t@skbuf>
References: <20250307150231.pc3dl4aavb2vdp7i@skbuf>
 <5ebcf4b7-ed17-4cd6-ba1d-c35562a32899@linux.intel.com>
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5ebcf4b7-ed17-4cd6-ba1d-c35562a32899@linux.intel.com>
X-ClientProxiedBy: VI1PR0102CA0069.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::46) To AM8PR04MB7779.eurprd04.prod.outlook.com
 (2603:10a6:20b:24b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM8PR04MB7779:EE_|AM9PR04MB7618:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bae8f62-f328-4760-d9f6-08dd62347383
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7416014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXVFZ3p6aTlPQ09ZeTV5dTh0VCtjZ3Q2YWdJRmttQml3UkFQNnJZbCtkNnRG?=
 =?utf-8?B?UUN0U210cERUaGlyOXhSZnF2cU83ZFlXMzQ5WEFEdWZpNHpkZnlSVjB0UU5I?=
 =?utf-8?B?K0p2bFpTZ1NmeU13RDlWeWNoNmlobUQrVGVKTmRPK0F6RmI2OEx1b3dzR1pr?=
 =?utf-8?B?SlBqaW5RclExUGxaaUJtRmg3Z2FZbWs4WThBV25jSXRNUkJMWFladStrMXpB?=
 =?utf-8?B?T2FZSFBTQkZMVFZZcEFlbnc5bUN5cXdwTi9jblVGS0hCc21UYnU5SUlrcEo0?=
 =?utf-8?B?YzB4M3lIK2R5OGxrZWVPVDhjeFpqLy9CUWVnMmxPVDMyeVpHY040dG9xdDky?=
 =?utf-8?B?dHJGWGRLQjBIaDIyUGpuSENQNlltKzJUdER0U3QyZldmOXRTWEM5MmJyUlBl?=
 =?utf-8?B?TzEwdmFBa0RzYkFxTXp0UVR0dFB1SlNsZHZNVWN2OFBWRHpON0ZDc1lMcm9m?=
 =?utf-8?B?cG13WmM0QXdVTVdzM3hlWTdjSUhnck1HU2tKanQzTkdkUTAzVWhLZFliVDZm?=
 =?utf-8?B?bit4MmpUT2kxbE1iWDVWSnl1Nk1EdEcxSk5ReklUR05HTW8xWUIvR1Qvclps?=
 =?utf-8?B?ZnlGY1k3a0d3c2pEVjUrMUdDaStTZkdtSXZnMms3VkNGR2JmS09wRVMwbTdw?=
 =?utf-8?B?ajFocVhKbkdHMTV6NTgrOTY4KzhtU3FqdVk0UCsrNDNHbnhRQllvdENFekhI?=
 =?utf-8?B?QUllSGtSNTdydWJOOGVEYWZBM2ZqWU16cVdKdDNURm9tdXVWQ0RIbnBNYnZx?=
 =?utf-8?B?cG1hYlBhSXVGaDJaR3haKzZCbFBRYVFkS0hKalRzNkVnUmhzNXVycmM3WHor?=
 =?utf-8?B?WEIxWG1mTFVjbE9GNk9WbDdNdmVpYmZnM1BEVi9WNGFBUkVDdmpIYXdnYXNK?=
 =?utf-8?B?M0ZRUUpTTmI4YTBUeW5TOWszR2pmbGIwVVVmVUY0TW9lUkRJVmpWN3JZSnRO?=
 =?utf-8?B?aTZWQW9ESUs3ZWpCczdkTDMrTTdJTlpGcUVMa1c5SjhnWXlkNWR2dTN5ZC9Y?=
 =?utf-8?B?SDc3ZTN1bzFjSDFuUjNaUGJhL3g3VWMxNitaaVVBMzlXUG5DcnM2T2NzTnhm?=
 =?utf-8?B?YjEwMnVVajBBRzhDaHMwMllVWHpoOEJOblZ2Tmpvd1NjMXdINEtUM3ZBUkRh?=
 =?utf-8?B?bVp4WWplM2szM1RDZ09sTTBQSTFsemFuSGpNL3E5a1RDNWFtSUFUeGNZUHJz?=
 =?utf-8?B?RURVUlE2RElYUFFMZFNYOU5ISkozeXFXSU9KTDd5OGsxMXZzWW5KaDJCWFcr?=
 =?utf-8?B?WVhxVk9VQ2IzdmtLUTY5cHo5Rk5tYzBzb1dMdldHM3lnVWIzVjdIYllKV0sw?=
 =?utf-8?B?dzhvVnlEeXR5M0ZOWGpYRm1mQUxhMTY0eXJHem56U2loUm9hOEkzMG9lK24w?=
 =?utf-8?B?YjIvOW5TbzMxakJDRjhqZzVybjFGQk10N25vQTA3MzJ4VEdoSWlDQ2RqeHVL?=
 =?utf-8?B?eVA2c05EemhDVlpRYmIxNlIybW45bGNSV3MwMGRBVldKdmh2NDAxKy9PNTBi?=
 =?utf-8?B?cFJQR2kzcEwvcjJ1N2I3SVA0WWprOUlHaEtKZTFpaXFXZWo2L1Y3clF1WmU0?=
 =?utf-8?B?aVNhWHc2ZUZPUTdmeXJ4dEtEdU5lZUVDdmkyOTB0d0NCazZZYUUwYXpsc0h5?=
 =?utf-8?B?L3NwZHNXRVpLV21lK0doS2RSVkwySjhybzB3YmFnU3VrTVpXTXBBY2w2L2xE?=
 =?utf-8?B?OFZGYWhpMnVUUkRTd2RCS3JLWnA3YTV6TlcvemF6NmJDbEROa3pITExZL3dv?=
 =?utf-8?B?R0s0Ny9RbTk0eU5yKzhUbnNhSW9Vcng2dUw4UkltV3BQeVJ6cW9TVmNSMkxs?=
 =?utf-8?B?ZlN2dENYNHpES1QrazI4eXc1cUszRlBFdUU4aG5TY2lOZ21YS1BwU1lpQzFZ?=
 =?utf-8?Q?UfagX5033MWTA?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM8PR04MB7779.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nzk5eHIvclFwR3JReWJiRS84T0FURFpkOXhjUldsWGFvWXpHZS9zS3ZzaDRS?=
 =?utf-8?B?VzgyeTZCT2lqcXRranJiV3gxelNUanFsa2x2eFE1bzg4a3l2L2RIeHNBamtG?=
 =?utf-8?B?ZEZJMHRrdkhpRW5waHV3UnBPL1FZdVhZOWpuUi9CMHZqaktJTG56Q1NVQ3FR?=
 =?utf-8?B?a1BGM1dLa1RhWnVyOVVxWHEvQnNiNHZqc2NTN0NvWVdVQ3V1M2cyV3pjUUZz?=
 =?utf-8?B?Q1pxOTI2UU1kbWxxWXBOOEN5V1NmN3V3S1ZzNUtLVnVuT2IzQWV3b0t6ek1l?=
 =?utf-8?B?RzF5VHN6KzdWUGxZRlVFaFdaa21WU3VlMEVyMVpJVkxESWhUeThnTDJJemha?=
 =?utf-8?B?KzZZWGhDeldBSzBtVVc0cUhDa2xkZVZzZHV3SS8zM2ZiVVVnOWl0aUtKUEtI?=
 =?utf-8?B?dzQ5RmtxSEhlN09VYnd6UkVrVlhBVHhZNlBwQU85NFlnMTJlQkI1aHFCYkk1?=
 =?utf-8?B?a3k5bFZGaEpaaWtkQTZNZS94VFVUWmlkY1lUNC9UKy90OXRKT21GcFJETTRX?=
 =?utf-8?B?aTd2QnlCbFE2VXV5UjhkS1pWQUdiZ3BKZkdSb21pb2QzUWFsbWMrNklDSCt1?=
 =?utf-8?B?d2pzMjhSMmR0Uk5KcFBHWWtnQ3NFVUJMNXFuOTlBUXkzZy8zbStPV3NmV1ha?=
 =?utf-8?B?dERHVWRTQ1Awa3pJYkZ1STRhWW00SlZXSVYvclRyR3VWWVVib3pleUF1WlBu?=
 =?utf-8?B?bFJhQ3BEZ0p1WkdidmxHR2ZkVk93bEExNGQ3Mk16TXNiakxkMTZ4d0YzODlS?=
 =?utf-8?B?MWpJcDZBYVVSTDNsenpCalBNeVVNTmV4QUhiSThDMlhyVTFITDg3RHhPbmIx?=
 =?utf-8?B?cWRYSk1OYyt3VnJGQk5udjY5Zzd6V0RFSVBneWxNVEVXRG94TVYwZUJCWE9x?=
 =?utf-8?B?ZSttWC9Hd2haMHpCelJOM1B6WURjOVBrUUpwL0dWLzREV3JhK0h2MTduZExO?=
 =?utf-8?B?WVFrZmh4SUNKN3lPdHdsVzAxVThyYVA2dVAwQU9HQmh3WG40cW10Z2hLVTM2?=
 =?utf-8?B?QXRxMWFpS24yM3Rwa3BWVFdSU2UyNGpraU9xbmc5dCtqN0xJQzgycmFCVVpy?=
 =?utf-8?B?WEQxbVFkSDBYdmhyNU44TXVOdk1hMHNKMEMrOUVLcWNNRlJPa3lsSWo2Tk1t?=
 =?utf-8?B?SzhDckVqZDN5N0hiODVHWDg0azM2cGZuNWVuVmQrWisrbU1rbndCL1VrMmdi?=
 =?utf-8?B?Vnh5STZDSkN2ckJ5MjlDbkF4QnFDR0ptUVQwRWgwMGIwOGZmVkxWb1NJaTA0?=
 =?utf-8?B?dHVpVnl1dERBLzBEZDlnY0pFY2NqS3dCRzROSmlOd1hhTk0yM2d5enRlQmZM?=
 =?utf-8?B?a21HVE95MVBxWUZDL005cW5UdVg5NXg1Rm9qZXM4L0V4VFVObi92cm9nVTli?=
 =?utf-8?B?SWlnQnFJT3dQNHYySHhwM1J5SHVXcjQ1eXdDYTJJZnJYRC9lZ2dYcWlCU0Rt?=
 =?utf-8?B?Zm5RUmsvVS82SUFRWVBTSU84VXhkcEI2Mm1Td0FvRFBtQ2kvdWxSSnpYdlla?=
 =?utf-8?B?S1RBMFRTeS81ZUdsZThKRWQ3Ump3V3hDTEZHcGtMUVhadXBCMm16MVV4Ulcx?=
 =?utf-8?B?WVpodkFXRW84b2pXUTk0dk9vZVpzNExzeGx3NlV2bmdHN2h3bTJYOU51RWQ5?=
 =?utf-8?B?Vm5QQjdwZmdIamYvODhLeTVEWmpUbjRTMjVHTWhXKzByb2pQMTB0a0VYUFVk?=
 =?utf-8?B?d3dJdXN5T01aY2NsUFRzL2NmWkxScE05Z0U4T2NhSE1IcGdrOUdUcU9pMy9Q?=
 =?utf-8?B?OGQ3UWhEaG5jaG0vNUhvQVhMZFUxb21qWTRiN0pFOEhjUmw5QTNmYzFOZ2kr?=
 =?utf-8?B?a1RYdUp5dFZKUi8vanlvOEt2VzVwWUVmNFRyTnNzSEtkK1pGTWdCV3h1VFZC?=
 =?utf-8?B?dmpSb0Vtd2gwUUN3V0pOZEtjYytjcFQ5VU8rbk1lMFQ2RE9ybGh6bkNKMFNY?=
 =?utf-8?B?bldrSkxkeC85V1JxK3lNeTJxTkhoanBsUWJOdUtpSW9XcUpnbndRU1RiYWs3?=
 =?utf-8?B?UmE5VEFyZWhGUm9JL1pRWis3TzdOT09Pdjc3YUtGdGVLQ1RFR3E3OC9xTnli?=
 =?utf-8?B?TTJ5Q3kxc2tQWjFaN3dBU1ZHR2ZYcFFpY1RBVi93MW1wR1NKeWQzSkE3cFB4?=
 =?utf-8?B?NE9tVFIvblNoL2hxQWN3Ui9vVzFoVklqdDU4UndTUDV1TVc5dURmc0VMU1pJ?=
 =?utf-8?B?c2c9PQ==?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bae8f62-f328-4760-d9f6-08dd62347383
X-MS-Exchange-CrossTenant-AuthSource: AM8PR04MB7779.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2025 13:39:17.7367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oDR4OX/o+ks9j/uJBxrkuBBN17OliooX3pF8Ur214YRqC2DVVbwY9exW3nqJ7ZXYD3jOrEjEDsIxWgYMKAHh1w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB7618
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tJLTjr7iSBQEnttUf5x9E4XotrK4tCblU/ifwU0KQHk=;
 b=KxSEtcifR2F/2/dNnhOMc3mOO37Ju7NLQCLTwK2LsFE/vA9219vgDeDkGayfvN/DRv47uzCbInTapGO6KO89RbzcylC4iLOIy1ZwZIgGMTRs6OtKAl2WoEaCuRtVcbSeMI4MHzARGEyKnONKIbdCuODTwWVtjrOH7Xdj6H2URpoxNMM5Y7CHBn3LKd/O1gKGq0nQhbnhoquCEKRlsnyzZ2AxnTMTk4d8HP0cEvlfc6hXnYHhhNPJrvBsguH1CWaNg8BNfsu2JbCzJayWqW6k28OTO67PPlid+vg0CGwDKfBanBOICyqwo/jEW1U1iyXYyz5sRGJVH8aVhW2va9nBvA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=nxp.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector1 header.b=KxSEtcif
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Change Tx mode for
 MQPRIO offloading
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

On Tue, Mar 11, 2025 at 04:03:57PM +0800, Abdul Rahim, Faizal wrote:
> On 7/3/2025 11:02 pm, Vladimir Oltean wrote:
> > How do you and Faizal plan to serialize your changes on these flags?
> > You delete IGC_FLAG_TSN_LEGACY_ENABLED and he adds
> > IGC_FLAG_TSN_PREEMPT_ENABLED.
> 
> From what I’ve experienced before, when there’s a conflict like this, the
> Intel maintainer handles it and gets both authors to review the resolution
> (this has happened to both of us before) before they proceed to submit the
> patch.
> 
> But if one patch gets merged first, the other person can just rebase and
> submit a new version ?

Yes, rebasing after the other's patch is merged works just fine. I was
asking if you had decided which one should go in first just to avoid any
ambiguity, but if the answer is 'any', that is also fine.
