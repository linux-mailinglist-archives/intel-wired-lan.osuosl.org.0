Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 182B7B3F19C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 02:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F09156160F;
	Tue,  2 Sep 2025 00:40:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k2wsKbQpWrO6; Tue,  2 Sep 2025 00:40:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 619A261610
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756773604;
	bh=LFf0+LCcjtT5KpGW7yciM8RbR7sDFC2VdzGGL+pjDwM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=h2yF9+uVRUjgkHL3GQF6HVPcYNeOLeqpaF7gYY8Bc1jM+UkJbWcOJ9EPvOq02Cbj5
	 +1HqDPX0YQ+YLauVesIb5/giw6b5L03qsFjBn5hnIuXoLPQHBp5X28f/An+8PFrY7W
	 sluVOyf5Kg3lNtVSUcOT89INE68OP4uCp/hIKz+uJsfUN3G1kV6iTokIdHlCCHkbzM
	 QMMhbjBJf7rV0kuDo8XK3qqvdezBf/npscAGNnAnwnk6tasYIqWDsdBrTzstt7jXqH
	 pKaJjIiA8YMfexqPo+nOovtGAc/t49NHoGYWBQeig2h03p90lPeC3oTGsWSzXZQHU0
	 cHjtBSX0NQvpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 619A261610;
	Tue,  2 Sep 2025 00:40:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 98587D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:40:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A812615FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:40:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aDQxGHwiMK6w for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 00:40:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.229.56;
 helo=ty3p286cu002.outbound.protection.outlook.com;
 envelope-from=den@valinux.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B9B0F615E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9B0F615E9
Received: from TY3P286CU002.outbound.protection.outlook.com
 (mail-japaneastazon11010056.outbound.protection.outlook.com [52.101.229.56])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B9B0F615E9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 00:40:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XeaxJI12rZ3qJL7oyPGQgtYCkNzV+GRW7VThufchzpKxOfJyiWY9svJUShE2uhNhHMk772/2RcbGozN0xQr/oYipbGjCnFazYGqMOV/37tK+/C75lg3s/cf8V8kqtgdxy6h9giQbza+mgF7Pf2WP3kb6R6hD9+KRVs+2xuCMhoLyr6Y1d5n3BfISN/6JS+mACJnF1exWSutknQEj8D7AE6GWl9gjaCEGoe7J4+1Q30EPfpzsJ0h4EqFt+Ite/K5iYfuLX6OUDsZLEavW4n2ZSoSEAuAXLFgMFfYvSBtGxvMpTVoWmvt/FHswdD7r17NuBEnVPOh2v1W2e2Do0bCb1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LFf0+LCcjtT5KpGW7yciM8RbR7sDFC2VdzGGL+pjDwM=;
 b=uHEpORje9LaDFfo4hbPZNWcMpNaYtM784YWdZLshQ+DwB1AMcCJ9VowV2ZcPN9jZuRDjCQA0M15Gxz0/qqvWhtukx+bd3BbWGFHabLENUPZ8nBpVPdN2zygCXdOlUZJ3jSnAyr6GCasfBkkTJGgF3u5HnNMqknqEv9DSdw/TCM861C5iRuesYlKorNALEA/e4N/E6lWOo7aQpyldlit9wMocAGc22iSB1PhUhAOuWqUtCTwKulgSSvJjljLOhHOO/1XWcUVTqpc9sskjU/cn3VZtgBGQgkRxAyuLJ91qUpE3t5zxc6+aLdTbaDFNLK0Rasbqn0/+eOPeP+VlanOA+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=valinux.co.jp; dmarc=pass action=none
 header.from=valinux.co.jp; dkim=pass header.d=valinux.co.jp; arc=none
Received: from OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:10d::7)
 by TYWP286MB2298.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:13d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9073.27; Tue, 2 Sep
 2025 00:39:58 +0000
Received: from OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 ([fe80::80f1:db56:4a11:3f7a]) by OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 ([fe80::80f1:db56:4a11:3f7a%5]) with mapi id 15.20.9073.026; Tue, 2 Sep 2025
 00:39:58 +0000
From: Koichiro Den <den@valinux.co.jp>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, jedrzej.jagielski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Tue,  2 Sep 2025 09:39:41 +0900
Message-ID: <20250902003941.2561389-1-den@valinux.co.jp>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0261.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:455::12) To OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:10d::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3P286MB0979:EE_|TYWP286MB2298:EE_
X-MS-Office365-Filtering-Correlation-Id: c32e9274-bc5e-4aa7-1b53-08dde9b93e6a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Hzqf0fNhp2YJ91YUMQpNAQRG7pqiEfZFgb2UlFgyak9QO1Vmq55glY+KaE3z?=
 =?us-ascii?Q?K35AdyEuhZh7RVTMOGqxSS4VjRGoALes373HrMy0Tpx7mOWuVphcUFD3YmKT?=
 =?us-ascii?Q?DQjpuwb6TQGAvpvdt4Bgd+nUavuOOJS448PLfHYrBVjIjR44ffhalKOGDQpV?=
 =?us-ascii?Q?keBFozvIU/y9dOo8g1byvARqrOdeV0GsXNxfk1lN8ZDLI9RVKLPdkwkghFiH?=
 =?us-ascii?Q?ykL2gay99mSjk8hXlFlKfcNrY0Nnt320qpUwK01ZCXeL+LKjBQq4QA7LQa/w?=
 =?us-ascii?Q?qgbS+azr3+cS7N57DQHkuIJEKA7wKdDf7ljM5QUK7l3fJ17THdEBTiTlF2hu?=
 =?us-ascii?Q?Wa8JIBZzIdZcbg3m6ts5zJ4ORttStL4qjPIQMQJAFZ2vn4vwOLLRg2cQCuDR?=
 =?us-ascii?Q?UJMnZEIQ1NKiT7kmfSCjm1AGhHZFymSnJtHvXqsF/MYJDCufcws9zO2JN5dH?=
 =?us-ascii?Q?cvGGYzzjy02dECX3LOcEXQz51htQny3HJbS/hZZgNbgZjDrNbXjWXJiitorL?=
 =?us-ascii?Q?wYW6L4wjhm9ug3p6c8u5JQiXpa10PHOfoy4GI7zosX0zrXteGVCxq0Q48KXz?=
 =?us-ascii?Q?4UKGJqubEgQO4WsMkGxj93LndQAHR900159YFXH0amZs7hP7hf0BrkurIp2U?=
 =?us-ascii?Q?+SqiX+MvKhcZbC4xyyeP1cnK0i6kgRX3KJmQczmSjgwa8/DKfbyJj62T6B1O?=
 =?us-ascii?Q?CZasCaPJY2sNXCCI95k1BsVmu8ujQESFSnK/4sqWbJ1w6yhnxu8+o/D7S6Ey?=
 =?us-ascii?Q?pkJduHoxmeHbCxJ55vbxZ6wdfbg6sSxcRWMdISFRXOnGXqASp4gtYjSy95St?=
 =?us-ascii?Q?xbUkh7h+ccwr7GitKQA13H6WhEwRcpIVzCYtVAAsH0YtnhyDG+C2Fjweu4KA?=
 =?us-ascii?Q?bpGwrXp3KiSVA4ZFAlJ+JJ7rpXBAH+ZKGvdyuDGGYwMqEaLLUumrU4B2cNq7?=
 =?us-ascii?Q?cR1103WVrqkhFCsnO1ghk3RtqHgCEO3BQeKOaImYlaoaV8OOkjATcUF6bmVJ?=
 =?us-ascii?Q?cGl8V3DSiR0ew8VisqnXpqtckvLVJd8a/twwyx2oktUCvMNVcSIctfhrdjyM?=
 =?us-ascii?Q?9G9BDraD67om2J24xgfoo8D5qkfP5JdUUy3Rzh/MQVcxnZZ5YSnYnV4XusFb?=
 =?us-ascii?Q?OVurTuEM78E6+66m/nvuKFJ1v76Ph4Z3iC2bFPKgofK+ulgOKMfMQGewcP+e?=
 =?us-ascii?Q?IOrIihUl+iSuZF93gTGLxz6uZQE3G5PT/2UgkE07Z5DpT+LTHKzilBldizmV?=
 =?us-ascii?Q?Z+1FJYkHBNaeOQ+lPQKDv+dhBHCO6FpSMmsnG3zb/1LBBePpaJvbZcugM0Oj?=
 =?us-ascii?Q?RfnSzK7mRF22PsZcw6L7QTFOqkRlyyvTGWe01uzn6g97i84BG4Ws+yNSJItC?=
 =?us-ascii?Q?Vx/pLxlDh0oNPWbPRpr/fchSHtT00jFIii6Ct1HpX3TGzbMNUZG7HUTI2esr?=
 =?us-ascii?Q?LZOu7Lq+SJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LCncm0EgngYv+AG5JUNLZdmQ81qAMKuNCwo9jyNS96Ss3veRcuZGmuqbU6LK?=
 =?us-ascii?Q?p3PjAkUdKektWjPa3rxIgz0YKQf5ZcMOFDKjmZgBeO4O65Pg4X9uvtHbYF9I?=
 =?us-ascii?Q?9gC92Tf7IamHF9eGOl/BbDlYZCDnSmkFI29I1WHyymc9usOSitanClMDYqX1?=
 =?us-ascii?Q?nlq7gvsgtt1wDeZGQsHYKtdicGQSvaR2xkDr5xg91i3dTBHFF1OkC0oNrmJo?=
 =?us-ascii?Q?WtsQuYrPbfMiQk0+ATaSetdqcI8Zi9oiSj9Hcc5SN6jGLv1K+vgWeGbz0w/t?=
 =?us-ascii?Q?74AvJvKsZyvXDOUAIjUH++LZUHePKa/jvqJ5W6O5Qxi5cOIdj25Z11oFLhb4?=
 =?us-ascii?Q?PFxCwUDDvjwEWHYCcLtrs217x0gx8vzQE/V898bK9TSxfCDsw9SvTmrxATL7?=
 =?us-ascii?Q?SU51udohp7ow6immlR+sNhAnXtb/7bjapFpWmb6ddT9GdVgDdC9Aqgt8tgLf?=
 =?us-ascii?Q?HhQfZkNXtYHFqHnYO2P8Oe0MG8Ly6Wd7b07L0oqF29ghOtidSf2szXbLnaWM?=
 =?us-ascii?Q?VuHBKwbHG5XKF/iRWde3IzeLu2NGC7FU6Ktm0EFxs5Ef5bISH02XD/+xczvh?=
 =?us-ascii?Q?l9xOTmxVa6wdmxAtXKh6t/wetvH7ACNwG2yZHrSjLYfGJvLVfLUZkDCbFBVj?=
 =?us-ascii?Q?1wqZh3FkKUOeNkfA57NniJXyRHX2uqfkyJbwTg4tNG2NYvXSP7u12unxGfdq?=
 =?us-ascii?Q?HQ48qq8pQXn/zdDsJWXTnU4IIRtseCNIwi2A9mw5z0PXzS8nj11pELmSWC95?=
 =?us-ascii?Q?ceMCVzsChFmUVBZ2+f3Oxtg6boRo7jbXej21roZpUf3kwGn5rZCOb7wLwhqG?=
 =?us-ascii?Q?nF1FPYlqkmjdp0QzpSYKC/Z9k0IhWdtPGdvtyA34jrzXNuM8l5MkeUbfJU3g?=
 =?us-ascii?Q?aDuho6nl+nWvKILC0mEQM0SQaf6t5fPzaSrX+Ea3Ryf5Xdo1jFnV6XbFi/Jk?=
 =?us-ascii?Q?xOTfPF8i+gzJ/46lyaOPH6rks1HUBZn8SJxU28hQJMKj0cgxcWpZPgvMYBJN?=
 =?us-ascii?Q?GpMrUI1kz6JrefDLy6xMU8489WTOc048jL8vlQcjZhXwRMctqaxjxZs+f4kK?=
 =?us-ascii?Q?Y4+KJnBQV/HOo5/3tDCG2w0OOpv90nknOvlHBVO1qUgyUS6ed/kjkQsw/rLN?=
 =?us-ascii?Q?adsu3BSvxpnwmDe/nOsHEXOO5ZoT4ihOnruRFOonpKbPU4kRQClab19neVwn?=
 =?us-ascii?Q?FT6Pv0UsM61CXBjP8W6Dkwq+dgCbmQOs6mtboklJNdQ2aBDxcC+JO9+ysJ1m?=
 =?us-ascii?Q?NybwPgiKvGFIi7/Ftxw8LHH5KWH5PcAtpDgXCiPbp3mkaGEu0EiYSVeK91T2?=
 =?us-ascii?Q?YKm5emQOzbigEJCPqaNmynzd0zcQXWG1lf1hWgRYCGJ/9pd4hYClzxXeuu70?=
 =?us-ascii?Q?IYnVifyQmLbAvKj6W8tR0otdOLU01ydVHKj2Mns8DPWtkNu21tkuEhDUHQRs?=
 =?us-ascii?Q?C3fdimcDyNvQeYcu2voAcP9Xvan/7wHJKVSFVbqbHJCvEzdDZHYqavcPi//Q?=
 =?us-ascii?Q?o8f6A3eZ0cHpOpDMRcGagM/Ce4YdLLmg8ScBxEz1yUBSgi5Bn7Uo4wI1kVfg?=
 =?us-ascii?Q?TlPCKRt4f5v0nv5gBR0p+Qq1/3FSuEWVb1uYFzW8IDf0FWsW0yco+xIPbyQd?=
 =?us-ascii?Q?SmQk0u1AVRjTqhBvCidLRis=3D?=
X-OriginatorOrg: valinux.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: c32e9274-bc5e-4aa7-1b53-08dde9b93e6a
X-MS-Exchange-CrossTenant-AuthSource: OS3P286MB0979.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2025 00:39:58.8358 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7a57bee8-f73d-4c5f-a4f7-d72c91c8c111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iZfE/E8oIecKk2+N0rsUHB0yT4EZIJFcGKu/5rhRP2/kJADynlOUAug6fJQzuliFTO2s72CQt2d0JIL9isRm1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWP286MB2298
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valinux.co.jp; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LFf0+LCcjtT5KpGW7yciM8RbR7sDFC2VdzGGL+pjDwM=;
 b=bPlwavYH6fapXPYebR71I/MEQd6kYSwuPl7FmhTdvdtOVR6Z0cidoR/tKHX+2k0mWShnLJ7+WHZQ+RN6nqN7HeX8oQRM3nB9GWAvLew35pWMnS5ra7IgT+rRZBn5W4mmH2G2xmoq5wrmPMW3C8+HYjYm3VqWMhk8zaHmjHBYdlA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=valinux.co.jp
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=valinux.co.jp header.i=@valinux.co.jp
 header.a=rsa-sha256 header.s=selector1 header.b=bPlwavYH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=valinux.co.jp;
Subject: [Intel-wired-lan] [PATCH v2] ixgbe: fix too early devlink_free() in
 ixgbe_remove()
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

Since ixgbe_adapter is embedded in devlink, calling devlink_free()
prematurely in the ixgbe_remove() path can lead to UAF. Move devlink_free()
to the end.

KASAN report:

 BUG: KASAN: use-after-free in ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
 Read of size 8 at addr ffff0000adf813e0 by task bash/2095
 CPU: 1 UID: 0 PID: 2095 Comm: bash Tainted: G S  6.17.0-rc2-tnguy.net-queue+ #1 PREEMPT(full)
 [...]
 Call trace:
  show_stack+0x30/0x90 (C)
  dump_stack_lvl+0x9c/0xd0
  print_address_description.constprop.0+0x90/0x310
  print_report+0x104/0x1f0
  kasan_report+0x88/0x180
  __asan_report_load8_noabort+0x20/0x30
  ixgbe_reset_interrupt_capability+0x140/0x180 [ixgbe]
  ixgbe_clear_interrupt_scheme+0xf8/0x130 [ixgbe]
  ixgbe_remove+0x2d0/0x8c0 [ixgbe]
  pci_device_remove+0xa0/0x220
  device_remove+0xb8/0x170
  device_release_driver_internal+0x318/0x490
  device_driver_detach+0x40/0x68
  unbind_store+0xec/0x118
  drv_attr_store+0x64/0xb8
  sysfs_kf_write+0xcc/0x138
  kernfs_fop_write_iter+0x294/0x440
  new_sync_write+0x1fc/0x588
  vfs_write+0x480/0x6a0
  ksys_write+0xf0/0x1e0
  __arm64_sys_write+0x70/0xc0
  invoke_syscall.constprop.0+0xcc/0x280
  el0_svc_common.constprop.0+0xa8/0x248
  do_el0_svc+0x44/0x68
  el0_svc+0x54/0x160
  el0t_64_sync_handler+0xa0/0xe8
  el0t_64_sync+0x1b0/0x1b8

Fixes: a0285236ab93 ("ixgbe: add initial devlink support")
Signed-off-by: Koichiro Den <den@valinux.co.jp>
---
Changes in v2:
- Move only devlink_free()
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 80e6a2ef1350..b3822c229300 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -12092,7 +12092,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
 
 	devl_port_unregister(&adapter->devlink_port);
 	devl_unlock(adapter->devlink);
-	devlink_free(adapter->devlink);
 
 	ixgbe_stop_ipsec_offload(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
@@ -12125,6 +12124,8 @@ static void ixgbe_remove(struct pci_dev *pdev)
 
 	if (disable_dev)
 		pci_disable_device(pdev);
+
+	devlink_free(adapter->devlink);
 }
 
 /**
-- 
2.48.1

