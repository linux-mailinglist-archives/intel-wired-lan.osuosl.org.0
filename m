Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A976E470D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 14:02:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A675A61424;
	Mon, 17 Apr 2023 12:02:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A675A61424
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681732922;
	bh=rTRyEOE7xoUggWbQmQpOgLaZ9kb9EELsoyeBExI1uKQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qTWmCYdvY376DOCQhMm2fzdjzb0EpGUtSm+bZQFNSN0VLp+Vo8wqW2j8hMv0Vd0C5
	 q3MloULbFHqvqzr3B5TZBPi9H6c8OocItQxQMMaVifKYy3AWhcfiTcMQNaU8vKQOKY
	 Txhy5e2xAbcGRHG6fbzJ2k0PoCF7H7wPX4omYAQG356/U0Kv9pCQDPd6L7wQWbyjvJ
	 82T3m1xnz9S67REGHGwRibxcHxSf/BCl4PvUuSgyJutjizVf/jmIzgpTsnj8E8iJZf
	 gVaDWCjy85Q8Cjnsnkj0i8s5HKfJucBc9sjVo/h5l/Vu3hDJoEo96pkVd+RL+V7cpd
	 9JRe1LZm+9UBg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a0m3935WoQVJ; Mon, 17 Apr 2023 12:02:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A580061419;
	Mon, 17 Apr 2023 12:02:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A580061419
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 857291C415B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:01:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6989583AE0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6989583AE0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I1O9MQa6wUwU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 12:01:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B588B82184
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2136.outbound.protection.outlook.com [40.107.94.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B588B82184
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 12:01:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dHrIdWU8ByS1NEpOAvU233FFs5cwaS7HL3y5Wq3CrmIHoovbCA/WF9WS05TyhQrxNbQhVQEOetpc7kYuXcygKy5IG6QWZitVt6WLV3xFo4bE8PblsFp6pkBygCsz0OGtGGmbGKSD3W0iXda//mkYDwNecFhEx+W0XidC2MqiYOEr4nt41J0IqNAR5Nd/CgoNwAH7LYz0MyOBA/PXMZBmlBPjQC7y+C/jmWvn5bRTimMfvFcADgvtxnGgEzDf8RP2lFhdt22bwvw3qZE2FyNggLIzMxg01aSIm8s4x62RL45tIieMV91DTqJ7xtM1U58R9+8EMwciKtEgjbaf0MVpLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7jnIKYWCoyojZcvek7BIecBdehhlCYFntyq+sfi5DQM=;
 b=QJCwRn9A9RlcocDvv0bXYyODBZlVIy8H5ybC5D9eFvew2DNSbVKZ6hyH8L22Co/ndgyuFgnPgU3igNDpjDDCFU5WJY+lnXCX4QOop8SnocPzFHg+2+jX3iV4c80f3v6d+gwRUwdGHsNQ+CWTijcnD4xmIFP/Uisck2BRM1SxKjesBmkRr53+CiUBjoIPZXN8yKXiH214niHsHvNtyBYwJefKRt2ohHmxclOxIS452XqZ+YnlrTI06UkCARWBS0Lfn3o8n7e89dyxluHbrPBRuDFS0/vMLX35EEUPyc9Ik+exC+Yx+h/00/HS06k1AksoApUIreu1fMlKwTppVY2IVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH0PR13MB5219.namprd13.prod.outlook.com (2603:10b6:610:fb::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 12:01:53 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 12:01:53 +0000
Date: Mon, 17 Apr 2023 14:01:47 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZD01K/CP8llU/Opa@corigine.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-5-mschmidt@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230412081929.173220-5-mschmidt@redhat.com>
X-ClientProxiedBy: AM0PR05CA0084.eurprd05.prod.outlook.com
 (2603:10a6:208:136::24) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH0PR13MB5219:EE_
X-MS-Office365-Filtering-Correlation-Id: 32d6e470-fe76-492a-9d80-08db3f3b8894
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0qRS2OsqK2qyanvi9s06qERLlCUe6VH2YpGAGEWY4bKKFmTWOxdOUvzDoY9YyFA1pdHA6ySr6mILEiSAtr7nxMIo0lmuItAeRA62+iOvT66oRcUbN2wOLAJ25AeQyPXYiVkwvhzwcN/25ANZ0CO3xmx/1bjGlwyMn3Ygw4lp9ubvh5tHuoHv7BRDqQTfYFqEqjr1F9KDE5pFN4n7Q+Gpk5GfcEvxXsvsZVOseCzDoTnDQCa1SvYjauNPAatRBpl4m7aRdrHjncaJbH/vMft+0qnAzPX3BM0obKrgbVc+FAUkILugG4XkQDn+lIc3Ah7QWiZeJPcAJ0hVgennEd1fZQYCfDjqMSZFDgUXaAWwCt29wiiSA+gR/7lCWHah4qZfbUHSSDCGdL33L+lftBRy6q3CYO57Extf5Y03Q5woFqlroYZjkRKab7oFUHzzVQptPbgGEQ6GjGdv9+ORbngcf93az7WcvWhzRJDkkcM1g5+L80sZ/gWCIahQ50fsw1P1qeeYCHYfH0D6u3kzpa/IDWxDZVMZf8XuZcQvrPnj805N+VTs61HIAMqyXQmdfVbn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(396003)(39840400004)(136003)(376002)(366004)(451199021)(66946007)(66556008)(66476007)(4326008)(6916009)(478600001)(316002)(54906003)(5660300002)(8676002)(8936002)(44832011)(41300700001)(7416002)(38100700002)(186003)(83380400001)(2616005)(6666004)(6486002)(6512007)(6506007)(86362001)(36756003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUgxdWtua3dhdTFCOVlpOFZhdzdtNlpaNGlTRGhrcVpIVGZoSjd1SlRCSGdU?=
 =?utf-8?B?MzJpOXZFTVl1VlNoVHUyUEdUelVkYkw1OVVVUUFONFpFSFVCdDArK2RLNkxT?=
 =?utf-8?B?TVQrSUtIaE1uMGhlUFd5bEdMOXNpSFF3WU9kaWJMNEJlZTVOUXRUdGY1Vktz?=
 =?utf-8?B?UzdHcjY3MVhvcWNxVUNaRmVoWS9qSGJtVWZHdVZRL1lSUXR6Si9UQmhGT013?=
 =?utf-8?B?V3BaMDlNY2I2SE1QbldwSWJRb29iaHduaGIyN08xam5YYmNuOHZNWGg2WG1Q?=
 =?utf-8?B?SlB3S3k3SndKbjQ2dVd3amdENnF0dGVVMzVyd3Y0WjV6dEQyQ3RBNVdic2Qx?=
 =?utf-8?B?ZjkxSTdKZ2JPcFlvQ2p5REpvV1RCcmNYVlJ6d1JCa0N4d3d6Z0lOT0MzSVIx?=
 =?utf-8?B?Y09JNStNUUtMdnVlR2tFWUFQd01ya2Z5U2JrNDUzV1h4T1pGZUxuQUQ2aG9k?=
 =?utf-8?B?M2trVDl0Mmp3ZnlCM3BQNHViVm1GU3kwRXVQSFU1M3B5Rmptd2ZMa1owNEVQ?=
 =?utf-8?B?T25ySlg1b0lWMmhvMkwvVThjMXBreXFVbGhicjBYMkxEeXRxQnhuWkdzM0Jj?=
 =?utf-8?B?UnJXa0JEc2JLQS9PK1ZITjFPYUdsYmdicVR6dVRRa1E4cWMwZXZKZWliVVIw?=
 =?utf-8?B?bmdXaHk5aCsvQlp1YWl5ZEJzZnY4akZGWmhyb0tBZDhGbDZkM1NNNFVpQ0M5?=
 =?utf-8?B?d1FCQVkrcE92ZjJ0UjhqTG83bGhEVkkwVnF0TEhWcTBJNjFLejh1M1lwTEZs?=
 =?utf-8?B?bmtHekJKMVhCM3J0aFhlUkNOcjF0M1ova3NvNDliUkc1b1A4QUJtck9XZEJL?=
 =?utf-8?B?RFFsOURrT2ZmSFUzZzZ6T2FFNUc2R002L2VvN0NxTk5HbGxxSS9SZVdlRXpj?=
 =?utf-8?B?SmM4bXNZM3JHVm5kd09Sbi9zaTNYUEtaSXErK0lQQS9YQy9OSmZpbWxhTm0z?=
 =?utf-8?B?c3JhSGNkUmVlOFpJM3FkV2xYMHlrbE9hYTZoZFc0aEIzYWNxbExTYi82VVNq?=
 =?utf-8?B?bzQzUmp5TDhEV0s4Z2ZTZnMxN3c1QWxQSGZ6YjROcU9EN3Bib1orc1ZCRTds?=
 =?utf-8?B?ZDJhVURneXFSUU5zYm0vRDZkRUlBS0hxYlZwV21ReFJWKzNuaCtUVnVVVWJ2?=
 =?utf-8?B?Z09YbUZSVmJCcVZneVVIYWMwZnJQYitDR28zSnM1a0czSyswek4rcmlQb3RW?=
 =?utf-8?B?eHVpa3hJeTFqSSthb0syS3dCVDJpRzVXWnlpVWt1UGZ3cUs5YUFmZnRhWVo3?=
 =?utf-8?B?WEQ2RytHaUZ6dFk0VXd4N0RNSnJlSlN1SXVZOW9LdUY4dmZFOXRrZ3d3MGJO?=
 =?utf-8?B?RU1WQWpvZUtNSSttYlVlV2M0YjhlZDVyZUQzUTAyQ3Zib0l3OUFhQ0IzMW44?=
 =?utf-8?B?ZlovTTFwZ2FOVnB1eWFabXNuNE0wK3ovS3I3UllNa2ZiTG8yZkxXZ3JySTFs?=
 =?utf-8?B?KzMwVENUM09MZE1ZUU96Um54Y2VPZjdlWk9SdEJMQ0hUUDFNaEE0WnVPbDhO?=
 =?utf-8?B?eitGMGw0ZHBZak9VWitKZVBMREErRGRwNzFGdDZTSUlJTnNxWGYycSs0OWFF?=
 =?utf-8?B?TjVIT0xXSzFBZDJqOWNTSk52LzhGRDNUOVVuYURqWjl1YnhTdlZjTURVbkR0?=
 =?utf-8?B?OENQR2JnQnl2ZmRQYUFEdm5vV0IwSUxFUzVoNld5b2xzcjRTbzdWZEtNWVlr?=
 =?utf-8?B?Szd0S2hweEl3aDFCdTRSUzNYOTQ3KzBqdlBqRFEyb3gwVkloQXQzaXBFTGpQ?=
 =?utf-8?B?M2pQVWF5WlZYUnNjVUt5R0srZ0dOdVRsUjBWdU9LTXYvNzc0eUtLSi9ZUXhv?=
 =?utf-8?B?RnduTUhmYUlBNE14TUd6YWxTRU1Ga1N1YVJTSXMwVEpGc2xabEltUW03Y3JW?=
 =?utf-8?B?MXVBdlpsN21pUmVWWVp0YkNIdlNQZ01vdVozTjBjSXBSVGNnQStwWFQxaDJr?=
 =?utf-8?B?RlVyaGVYS3hoT3Y4bzcwdkVCSmpBMjR1QXFmZkN5N3UxNzR4Qlg1SEFidzhR?=
 =?utf-8?B?NmlIZkdCVjVqTWlxYjA4VldlczFicWtmYWxDa284WFl3cW5tUjlPNm9MTWN6?=
 =?utf-8?B?QkJkOE9aV1BNU1NuRU81SmZJbzJrTnplRmlQQUVOUU5sQzh6M2EwRWhnbFVT?=
 =?utf-8?B?MEdvSnZXYmEyVlBvZG1FRkJOL2QyekZzeThTS21STE1zTWkvQTdZb2dSeE5W?=
 =?utf-8?B?QS9lNmsyRVBnRkRPWFJCR2o3dXVuc0RhbWNhQ0FuQVAwZ0hRSXRkS0g3Smtq?=
 =?utf-8?B?bXhiVkh1SnA1dzlneGRXNWd3eFl3PT0=?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d6e470-fe76-492a-9d80-08db3f3b8894
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 12:01:53.1354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mx3cYy2x+fPvwRU3VPzR1v0YbaBzCPrsS0cMqtrMJwT5zJ7+jMvUb1EBDX6+icqdypdzBUwwkJdXh1zidSJ5TM+66T2ZdD5ufao6DX8C/CU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR13MB5219
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7jnIKYWCoyojZcvek7BIecBdehhlCYFntyq+sfi5DQM=;
 b=RHDG538QRKTkf/ECV/ObLyFwauqveOeB8SIo6QhEjkX/c2UUeBKKDWYLCWvYu9vAEJv8T6js4LnYBi+WFyT5684Jm6VRDt0VHfZVmmRrvGAyVG4dzfcR7PlBT7Qh+UFDOURKjrhu/L/hOcS8Ka+XXmo0oG1vub9riwLuL+rVzlk=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=RHDG538Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 4/6] ice: sleep,
 don't busy-wait, for ICE_CTL_Q_SQ_CMD_TIMEOUT
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
Cc: Brent Rowsell <browsell@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBBcHIgMTIsIDIwMjMgYXQgMTA6MTk6MjdBTSArMDIwMCwgTWljaGFsIFNjaG1pZHQg
d3JvdGU6Cj4gVGhlIGRyaXZlciBwb2xscyBmb3IgaWNlX3NxX2RvbmUoKSB3aXRoIGEgMTAwIMK1
cyBwZXJpb2QgZm9yIHVwIHRvIDEgcwo+IGFuZCBpdCB1c2VzIHVkZWxheSB0byBkbyB0aGF0Lgo+
IAo+IExldCdzIHVzZSB1c2xlZXBfcmFuZ2UgaW5zdGVhZC4gV2Uga25vdyBzbGVlcGluZyBpcyBh
bGxvd2VkIGhlcmUsCj4gYmVjYXVzZSB3ZSdyZSBob2xkaW5nIGEgbXV0ZXggKGNxLT5zcV9sb2Nr
KS4gVG8gcHJlc2VydmUgdGhlIHRvdGFsCj4gbWF4IHdhaXRpbmcgdGltZSwgbWVhc3VyZSB0aGUg
dGltZW91dCBpbiBqaWZmaWVzLgo+IAo+IElDRV9DVExfUV9TUV9DTURfVElNRU9VVCBpcyB1c2Vk
IGFsc28gaW4gaWNlX3JlbGVhc2VfcmVzKCksIGJ1dCB0aGVyZQo+IHRoZSBwb2xsaW5nIHBlcmlv
ZCBpcyAxIG1zIChpLmUuIDEwIHRpbWVzIGxvbmdlcikuIFNpbmNlIHRoZSB0aW1lb3V0IHdhcwo+
IGV4cHJlc3NlZCBpbiB0ZXJtcyBvZiB0aGUgbnVtYmVyIG9mIGxvb3BzLCB0aGUgdG90YWwgdGlt
ZW91dCBpbiB0aGlzCj4gZnVuY3Rpb24gaXMgMTAgcy4gSSBkbyBub3Qga25vdyBpZiB0aGlzIGlz
IGludGVudGlvbmFsLiBUaGlzIHBhdGNoIGtlZXBzCj4gaXQuCj4gCj4gVGhlIHBhdGNoIGxvd2Vy
cyB0aGUgQ1BVIHVzYWdlIG9mIHRoZSBpY2UtZ25zcy08ZGV2X25hbWU+IGtlcm5lbCB0aHJlYWQK
PiBvbiBteSBzeXN0ZW0gZnJvbSB+OCAlIHRvIGxlc3MgdGhhbiAxICUuCj4gCj4gSSByZWNlaXZl
ZCBhIHJlcG9ydCBvZiBoaWdoIENQVSB1c2FnZSB3aXRoIHB0cDRsIHdoZXJlIHRoZSBidXN5LXdh
aXRpbmcKPiBpbiBpY2Vfc3Ffc2VuZF9jbWQgZG9taW5hdGVkIHRoZSBwcm9maWxlLiBUaGlzIHBh
dGNoIGhhcyBiZWVuIHRlc3RlZCBpbgo+IHRoYXQgdXNlY2FzZSB0b28gYW5kIGl0IG1hZGUgYSBo
dWdlIGltcHJvdmVtZW50IHRoZXJlLgo+IAo+IFRlc3RlZC1ieTogQnJlbnQgUm93c2VsbCA8YnJv
d3NlbGxAcmVkaGF0LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWwgU2NobWlkdCA8bXNjaG1p
ZHRAcmVkaGF0LmNvbT4KClJldmlld2VkLWJ5OiBTaW1vbiBIb3JtYW4gPHNpbW9uLmhvcm1hbkBj
b3JpZ2luZS5jb20+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
