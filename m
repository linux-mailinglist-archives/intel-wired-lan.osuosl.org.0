Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA1DB3A359
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 17:03:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E29A240D9C;
	Thu, 28 Aug 2025 15:03:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IniRlgDaV-nS; Thu, 28 Aug 2025 15:03:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CA8540D97
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756393397;
	bh=j9hKELv/XYxPko+wZ078jrUEDKc1V4UC+rZfezMfwGs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MltGUfPNxum7oQYSF90Sz3XQ+z59We82ip+VAgdvxyTJSC23WfI3sNNfPfNtjLNjE
	 FlqFVZUieZ7sPPyTUWzogzHaJkf92rUJWCvSahadlsIXuLpsH3KKyhOxXppKWbsRIk
	 IGEK46r/UzzR/35uekQNisiHAxJT5wPnbSWnq5GAxBNcx5NAMD7dcMV5W5r9HDGFum
	 MmQesItjswkHUacYwUdHgZ3/Jfby9T4OnhEoEhlMuG6RuSEh5ICM9gwqURqBo2Qlg5
	 3MKFi1rSkyrqZa6kbfsYFu+7NcQRdDzWXXhEBzeHSdqpPYMZCHt1DjQQ/B/mxTJSMA
	 DL1t2HlYCQtDw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1CA8540D97;
	Thu, 28 Aug 2025 15:03:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0BE9417D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 02:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC92C40870
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 02:06:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YyXkURvgjBmp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 02:06:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.125.57;
 helo=tyvp286cu001.outbound.protection.outlook.com;
 envelope-from=den@valinux.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CA40D406CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA40D406CF
Received: from TYVP286CU001.outbound.protection.outlook.com
 (mail-japaneastazon11011057.outbound.protection.outlook.com [52.101.125.57])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA40D406CF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 02:06:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t51YXmFVnvf67GDdXdezNwRV0ugbRN7q4fNtcI+xtYJcL9AiX9y9FjspcgAEFE11cnHomHaYUxTxjvOB3x2sXvXBmUYtb8KUPfzB+NFSdQhTivDxUcdNoNd/UeGFj2P6B62Wmr9fVwR9ZU21pjm/Hg0uR32r/QN16t8jXUqqvpbVgniMKAIM08DhmDQYMuQJnkU/85aWKhF+sibnhns2FvuwlTV0ODy1hDVghuo62EhyHPQhrXP2c3i7fCXCm97topHjr9RQCf7NwdB7ocsW/2YMcxXyzYsRMZhwf1o7riA+yA2e/vKDE26Z4HmU+SkDtv3yyJ8WcbjyfPQTGTFkMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j9hKELv/XYxPko+wZ078jrUEDKc1V4UC+rZfezMfwGs=;
 b=YDs1GO3QJCViX1Bj/QALs/CbF6+2aOFNOGjU9itbeOVPD3vYGAjQ3c+VbdDKPjE+3Gagky3eplcESNZJKJ+0cXlGygkcHw9RDwB6OBSFk/YchnASwhmJELeanyOAKjeVslhhcvMd2aFxq/ho6WFhrxGEM06EqLAYloIL0TL25RJovJvHSRXcsUNbnMv+COoRo0djXKUcxcZbfQZ8sHjfhNyj2orWMyncbcbqPFfPwwF5LM8Kl+Wv3YaRQVyXKyuy3qTVZZ9dYlLCMLpIk64ooE/EwBj8qcfRatB9vAY/k3aDMjlkE2Xb/KfVjkjaEdxjHEicA2JZW34nG8GVXvigJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=valinux.co.jp; dmarc=pass action=none
 header.from=valinux.co.jp; dkim=pass header.d=valinux.co.jp; arc=none
Received: from OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:fe::6) by
 TYRP286MB5848.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:2e6::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9052.21; Thu, 28 Aug 2025 02:06:01 +0000
Received: from OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM
 ([fe80::fb9b:13f3:8329:52e3]) by OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM
 ([fe80::fb9b:13f3:8329:52e3%5]) with mapi id 15.20.9052.019; Thu, 28 Aug 2025
 02:06:01 +0000
From: Koichiro Den <den@valinux.co.jp>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, jedrzej.jagielski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Date: Thu, 28 Aug 2025 11:05:58 +0900
Message-ID: <20250828020558.1450422-1-den@valinux.co.jp>
X-Mailer: git-send-email 2.48.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYCP286CA0215.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c5::6) To OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:604:fe::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OSZP286MB0982:EE_|TYRP286MB5848:EE_
X-MS-Office365-Filtering-Correlation-Id: 119b3669-ed4f-414c-52d4-08dde5d76fcc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?30WTXwtqwu+GABU1HsRRZ2DNKSHWCvOu8TzFOCs5PmKYN5LNAdUz8QJyCzik?=
 =?us-ascii?Q?aTKqvePXH41Bbz4IAnFtZFSGdOCDsz2TYXrwHFwXNnoyyVEMpS8/lYIxcxx8?=
 =?us-ascii?Q?qfO3nwA5U9fOz2iXUSWim1+wl+zKito2SbuEUXoIPiv/e602CZbBrgolKGxD?=
 =?us-ascii?Q?KbVsCw/409inyt9t961d59xx+5/G7j2cmbmHvtRbtcmkuLk+y2pXkhxFx2uf?=
 =?us-ascii?Q?JYe390KpkfqgOstLjXCdLfcFEEex50l253nrhmspkUXveSDuYWx+a5VvP3Es?=
 =?us-ascii?Q?onUA4aTHmPGGLn3Wm3ER7fcWK9u9G6ygk7Lksps8NpVhg292gjnrQUohtFLZ?=
 =?us-ascii?Q?AYmt4I/AygM6bKYA0XgBLV4vp9RRMMr7mH96yCGcepTPj3TH/LOrLw46PmPy?=
 =?us-ascii?Q?9GDaZzmCiGkNTuNnrMri41dXal5N376gQ1BHyH3zTXe8sCc63AhbPpzpo0Iz?=
 =?us-ascii?Q?w/5P6z96L4r8WkALisAFmGyo9wU4PZMTw0CmP6SyLEU1De3jDVAstxi2PNOt?=
 =?us-ascii?Q?xJOxD8FIkDCUwwJ8B4e7H1V6VjkwcNXwG3/khutOulvRGtCT1nwHOBi9PYg7?=
 =?us-ascii?Q?rUSkZWFjn4UVH3GLFAm8AFCYT0vRG8ozxlmUQxYYmymC6KtdY+XbrtbpQLXV?=
 =?us-ascii?Q?UxPWJc+s1fURWzad96IDygk/Mtwx36mLPm+XEdSKPbcHVTx1kuJoFLzZqXTW?=
 =?us-ascii?Q?SH53TehR9lMT+VjtUPirGPt3t1oc3ApR0OqV1Am+z0JmGaWRlvTWUq9cXmzi?=
 =?us-ascii?Q?oZaYA0UNcalXytdF4ZfsmpCJkWXEQhS0wCl8w1ae4JRM1/Dz+7X9d2CPGyd4?=
 =?us-ascii?Q?5rFE8pwjUubN46eHWQDAlh6+FnXLeqbHtgNnCqszkbU8CWEknxBlsjpi4nyN?=
 =?us-ascii?Q?QTMFiC1ICkuPzChuWBL2EBUYRj9UfUA6hjC7HNLIIE0hHrRMlcAAQPEhFhNZ?=
 =?us-ascii?Q?Gp8otXHhpFFvat6ErDj9s5P9dFGeDMDvtHMzyRRtEw1cdfcI+EBd3UI+qyxD?=
 =?us-ascii?Q?V7dukyLSKOp6i4tOPbmf5pTfrSkSt01wffU5mDSj3IcFHj5N2VVOZaM0NsXT?=
 =?us-ascii?Q?bhMnH9VFSd8/PQjOX/4LnhngETW1tejG9n6QvN88ZqlbDTWX+cRPEUK6JtEM?=
 =?us-ascii?Q?KORWmMUhIewh91EXIW5O6Pi5+rwjzygsyqahr7NwYUeGQVTVhW5kkFErO2MQ?=
 =?us-ascii?Q?oOcRAZDrkFKaXJkzoebLcXS3DdQydcKbXENk9bGSHHA2nKjwQg3+ydm9pivF?=
 =?us-ascii?Q?FbmgeeCNaSbm6uZ7YD3luJtMYD+fpa3k2ob7JjYooSAc7kwWCgFsit5iYoMu?=
 =?us-ascii?Q?xfWacgE4YzKXLZyJ1Q4JGTu7opDvAAqnk6eqOEUWtkOppidCg4pMUR1TjvYX?=
 =?us-ascii?Q?nujYFxHFYef+sjzzr/jzYBIg7IcoVmxGSUpPmZbeDpfK2WKJemEyGXoLxN5U?=
 =?us-ascii?Q?0Ld78yVEtas=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HiNx8dnDHIwqCUEo3XAsFwut/7rwNHkrKhekBWjMESfn3In/F7eNrWFilINw?=
 =?us-ascii?Q?Lfos/SmoOdhpC2gdVw2QqEhjTVoqNMmL7GaJwvn7HqUguUrT+2303fp2us/h?=
 =?us-ascii?Q?3Wdl0eiZuk9TKTFDCRX+YsuDtZlWT2Mgp9F6LYYtrjUMFZ6rNfbgXTkoOiBP?=
 =?us-ascii?Q?uS0LNaZs7OAZviOIJ/X4FEEuxHtcWjox5FwaUlgrGdP8+C9NXPWKvq9MPc1Z?=
 =?us-ascii?Q?EUTkF71gf8cLO6DXskoO+LuDLLOz9Kuxkk+8/wHQERtaXWUXOBI/kDazSAWO?=
 =?us-ascii?Q?LuuJtWOwmtmFqV21QddfQzEpDeTuILSc9d0HTlpj7cVoVJdeIzTkGjKRAdUi?=
 =?us-ascii?Q?zROXqo1gUoKFXJRpr4THAc8DqqUERU/jDNKB3Wq91d59KrUYqPdLID0f3ElC?=
 =?us-ascii?Q?OvFEEKB3SLXin6gtQ3b+FZvTdLV3j7igSF2AnQZAJAbGwDoWbAJnkpPL74Cr?=
 =?us-ascii?Q?MNOzpbpkalcBkI1zVoToirR0Nx5jYP+loymOzNVK+UWHApfkZ1d6vNWhYerz?=
 =?us-ascii?Q?PwVLTgfnGLlcDTKY4Yx2gVV6oZrjd2KMLLIzXfScOWG5BmI1Ib+cAq2aBlOD?=
 =?us-ascii?Q?+nrAgOsr7zpPkcMDTjP95tHSgZZbegFCuIMYaKpwCKo5npXWOmVBKOMdgTkM?=
 =?us-ascii?Q?evadn1FzVNzLQ1aaFP4afqSzWIUy4JISym7qpbWYvgs729aflhcY9jFhLewC?=
 =?us-ascii?Q?oozxKGsJvL9HO4P22BhuwANJYoso/s4OXCljwCUNOQLW3bq8G1yp6LK5bzad?=
 =?us-ascii?Q?lAeg/Q1oEi1bKwobuEmhKYrmB8p1fbfeolCvUlPcT+VW/IEuuEAvbwe2TGpr?=
 =?us-ascii?Q?ySjkE16xo/AURo7PrN9fPd5EGFf6/0k1nV/QD6tcqi9DYrB/Dj4oGizf6AUj?=
 =?us-ascii?Q?MxfZNYIjXwoQ5IBMZHJD9/uwRw3zFarg8jaCKjoP5KF6iXmsGF3w2B3v5atE?=
 =?us-ascii?Q?yDXW0FBfr0CavU+KqGWLHzIEv1llt8f59Fb3ZmsA+9L6cTUNI9Of+DofJlJa?=
 =?us-ascii?Q?/LBB8LTksLP3XsKmx3bcSHdyLsMZDHseA3XSZibQC00b/0e59tNGuHvgiPKJ?=
 =?us-ascii?Q?Xj+rPSzs2q6dCIEY7LWjZDyTzuBBPrCY5k0XgxDog087mrqpRw6MlxVBrwng?=
 =?us-ascii?Q?QiyeF8dx18dSJQPN0vp+Al1YeUjoLVv7Cwd+jYyOyJH6MLSyqPHuGOjibAQl?=
 =?us-ascii?Q?VqNZrNLMPf/szjpoiS4hWiq29u7m8fg7CzFfVXKAaVF8vqkc3fO3qF/JasbJ?=
 =?us-ascii?Q?ZpgrsGn1NpnnR9mQJf81h6jEI45rSqEGsXSR27sNgHxM/Bg9eccSV3n7tjku?=
 =?us-ascii?Q?SY9FLrxCsWwBMNaiaVjj9pwsbqqrQrreo06vuszZZbBP1R379Tn9AGXm9jZO?=
 =?us-ascii?Q?Jb6IyKVQr0tgTLPRabKbwoy8lnRMsoU4W4TqCw0v+1z31195ZGMAq8jNwGWT?=
 =?us-ascii?Q?tbbPSNvltrlTZ4rkGmHXWjzHs05YLuQaBlVSzNy2HYdbquUQauNSQV6m4lTt?=
 =?us-ascii?Q?9hRfN06+zZ5Wsg0oypyAor40M4OZYJbEdWj0GTmGbjUtlGD1XeF8X1nB1guH?=
 =?us-ascii?Q?Q7tpK//O0cAxN7Tj7GVNyD1LBy8FiQYraGfEBFsNuNg1gdfLnjuA4/AiRyZI?=
 =?us-ascii?Q?WSAaINaf7nSqyjYbE9nIRA0=3D?=
X-OriginatorOrg: valinux.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: 119b3669-ed4f-414c-52d4-08dde5d76fcc
X-MS-Exchange-CrossTenant-AuthSource: OSZP286MB0982.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 02:06:01.4387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7a57bee8-f73d-4c5f-a4f7-d72c91c8c111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qhfG9p8X0Xfc0/K7kccOHiOYT+ScZAJmEq6OOIGMk+I389ik/ceqWdYJEsmV0k6EqPWafGgtQm/mX/2D5LOI/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYRP286MB5848
X-Mailman-Approved-At: Thu, 28 Aug 2025 15:03:16 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valinux.co.jp; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=j9hKELv/XYxPko+wZ078jrUEDKc1V4UC+rZfezMfwGs=;
 b=ubLWS4UzBsENWrrJvwQ5l2njL0M3shGNdbRTwXvCJkt2dJvbOgNub5gWDrcvTNHRvYtdzaZ3VWYmZSzC3t+EXetJKyCzqrUA8KVI58QFvxsfKgmKlxo5BfONLoX5EKJVJ7Vnl3nCceVmv0rT2QQpBi1gZ+LhspI5tkkzjQsMDP0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=valinux.co.jp
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=valinux.co.jp header.i=@valinux.co.jp
 header.a=rsa-sha256 header.s=selector1 header.b=ubLWS4Uz
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=valinux.co.jp;
Subject: [Intel-wired-lan] [iwl-net] ixgbe: fix too early devlink_free() in
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
prematurely in the ixgbe_remove() path can sometimes lead to UAF.

Move the devlink cleanup steps to the end. KASAN report:

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
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 80e6a2ef1350..2b1f3104164c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -12090,10 +12090,6 @@ static void ixgbe_remove(struct pci_dev *pdev)
 	if (netdev->reg_state == NETREG_REGISTERED)
 		unregister_netdev(netdev);
 
-	devl_port_unregister(&adapter->devlink_port);
-	devl_unlock(adapter->devlink);
-	devlink_free(adapter->devlink);
-
 	ixgbe_stop_ipsec_offload(adapter);
 	ixgbe_clear_interrupt_scheme(adapter);
 
@@ -12125,6 +12121,10 @@ static void ixgbe_remove(struct pci_dev *pdev)
 
 	if (disable_dev)
 		pci_disable_device(pdev);
+
+	devl_port_unregister(&adapter->devlink_port);
+	devl_unlock(adapter->devlink);
+	devlink_free(adapter->devlink);
 }
 
 /**
-- 
2.48.1

