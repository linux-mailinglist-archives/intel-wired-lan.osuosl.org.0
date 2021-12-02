Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BE8B466619
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Dec 2021 16:02:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B99C40A25;
	Thu,  2 Dec 2021 15:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RCmXCn24ZeTk; Thu,  2 Dec 2021 15:02:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0ED0640281;
	Thu,  2 Dec 2021 15:02:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE101BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 08:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF30A60789
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 08:34:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=gmx.net
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bilc5D93Kxuf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Dec 2021 08:34:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FC2960643
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Dec 2021 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1638434044;
 bh=Kf0ZfEWjrHIYAgO6oFML6iYFQEHAKOlFcW+N+Mh9O2M=;
 h=X-UI-Sender-Class:Subject:From:To:Cc:Date:In-Reply-To:References;
 b=ZtRNMx5dMLwa+UK4w4i1sxFXEU7j7B9d/MxeRq9pxhEx4oQsiE3Qobqcx/nrrsFJV
 79ZRFyBIgbTYUWN1DlYbsU7N1Nh7fIOJeuh2a5vhqR20M8hsqKM/aL/Y1/+eCaOmZa
 rR0LGisLCW5IL2gbJzbLNqbP3X9jdASuF7VDGesA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from machineone.fritz.box ([84.190.129.192]) by mail.gmx.net
 (mrgmx104 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1MdefJ-1mJdq11WXB-00Zc3j; Thu, 02 Dec 2021 09:34:04 +0100
Message-ID: <5a4b31d43d9bf32e518188f3ef84c433df3a18b1.camel@gmx.de>
From: Stefan Dietrich <roots@gmx.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Date: Thu, 02 Dec 2021 09:34:03 +0100
In-Reply-To: <20211201185731.236130-1-vinicius.gomes@intel.com>
References: <87r1awtdx3.fsf@intel.com>
 <20211201185731.236130-1-vinicius.gomes@intel.com>
User-Agent: Evolution 3.36.5-0ubuntu1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZnGiQBhmCloJ2vtHSuLmhgfpM8PYIjcZXr2BckGgeHFi9eij+We
 s1O7sEBKotkEOCezmMiXs3HBB7CWm5T4yc/4LT8KQbbnflyxpIi0v4s9K3n9svM2K3W6Et/
 JowtMfwyGr8jyMTNCWkBp1JzQXUPIN65JA85mjyw1OYvXlwDLpJvTQiDItvTUBO3ZMwX1xy
 L4GY26I6uuqA3lKYw5Pmg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Yo/aOvVyU08=:UemHymsbrm9Rt+jlg3IZcz
 yBAiSVJFBNpjb0AbOioiEsGblAv0x7FsSJl1HClBIjYNiA8udwYSmiZ7ZSim1P6Cb+S34p5EY
 oSo9Pds9I7dw6zNvKboQUVu12oSUVfaJfpmDWqwxakIhiGzgUbwWpu7EBXgY+7dfqj7u9Sccg
 VfElmMzslF4Z7c4zup193q/UMtWngaLNTcTd73/FMV3+gAvwyisxI7+ZGg7r4HXrs3GS4wT4R
 +L4GSJjyeKDNKY5A1SjFIhs/4JZgjoou2Pop9G4CvjRADwBhzTA1T16ghIWSPZNuVpcMF2cls
 C8lRYl/FCAPU3KdFfKUteopyxsoLMd/qSDJ0Ul+UwgxIro/CE2851OZ3qvxZGA9beBvwflt13
 3OAoTSwNORpNHK1ncYAQU2pzyjIuw0xtseeG1lhw6+Ne6mSusrJiZVVjIIEDtyWPkVp+eOips
 kaJ+vD+6Ps7N6qiWq5kpUQS471eW/F6RkEchSkuscGaD9oiGt5VYwHi2pY35D0zrKQXRag7Vi
 sAIZgGVQp2ZzLzOuoJ+SJ6QACQF9HNuEKYmZIrIEvgMbE8afKCEG/7fQS+PXBQjyvnYFRuZAl
 rp1KGLYe1hyA6eC1GRA4tYepYKncwb/+ECPRr4MtCXYsgaBAx65orVIU7SoIKyrlnspEa69y/
 XeIV/aHZKe8qhP4jb9NT35L793Wz1CyxC/CQPgpnWJS+GjFMKwqzOcl99EHJfFdxCDfuTF5BN
 mVKa78Y55d+7l0MMwLw/YwCFGxZcwQBPxwtdkk8JM/hvqQ1jXoMoL07+7/Etw+zcIVe1QPJ7E
 MmJuR5bPMeaECBzWjtxZwMHj0+pVMbz8crbU4yuItP+L9L1EhUP4fsEHtcAojk0ULJde1OP26
 ndxD787glVcqiZvT1eKajFIBYmWshDNMn46Cp653AesGLPEApG3UtVqYLwSRP6pIXBpXvVifI
 mEu123gNGmTNHcwHZ6TRBkt7tEkPf4NntmbSaNIQ2yNjeBts9+CTLmKNzsNWX9J3WROpp0WTV
 Tkk2+vqetoqUhOXSl0NZELS9/hD0T4Vw661/0y+rMZgiz8fTxVP2lCalHfM0nJhQkQ==
X-Mailman-Approved-At: Thu, 02 Dec 2021 15:02:21 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igc: Avoid possible deadlock during
 suspend/resume
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
Cc: kuba@kernel.org, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 regressions@lists.linux.dev, greg@kroah.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

thanks for the patch - unfortunately it did not solve the issue and I
am still getting reboots/lockups.


Cheers,
Stefan

On Wed, 2021-12-01 at 10:57 -0800, Vinicius Costa Gomes wrote:
> Inspired by:
> https://bugzilla.kernel.org/show_bug.cgi?id=215129
>
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
> Just to see if it's indeed the same problem as the bug report above.
>
>  drivers/net/ethernet/intel/igc/igc_main.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 0e19b4d02e62..c58bf557a2a1 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6619,7 +6619,7 @@ static void igc_deliver_wake_packet(struct
> net_device *netdev)
>  	netif_rx(skb);
>  }
>
> -static int __maybe_unused igc_resume(struct device *dev)
> +static int __maybe_unused __igc_resume(struct device *dev, bool rpm)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct net_device *netdev = pci_get_drvdata(pdev);
> @@ -6661,20 +6661,27 @@ static int __maybe_unused igc_resume(struct
> device *dev)
>
>  	wr32(IGC_WUS, ~0);
>
> -	rtnl_lock();
> +	if (!rpm)
> +		rtnl_lock();
>  	if (!err && netif_running(netdev))
>  		err = __igc_open(netdev, true);
>
>  	if (!err)
>  		netif_device_attach(netdev);
> -	rtnl_unlock();
> +	if (!rpm)
> +		rtnl_unlock();
>
>  	return err;
>  }
>
>  static int __maybe_unused igc_runtime_resume(struct device *dev)
>  {
> -	return igc_resume(dev);
> +	return __igc_resume(dev, true);
> +}
> +
> +static int __maybe_unused igc_resume(struct device *dev)
> +{
> +	return __igc_resume(dev, false);
>  }
>
>  static int __maybe_unused igc_suspend(struct device *dev)
> @@ -6738,7 +6745,7 @@ static pci_ers_result_t
> igc_io_error_detected(struct pci_dev *pdev,
>   *  @pdev: Pointer to PCI device
>   *
>   *  Restart the card from scratch, as if from a cold-boot.
> Implementation
> - *  resembles the first-half of the igc_resume routine.
> + *  resembles the first-half of the __igc_resume routine.
>   **/
>  static pci_ers_result_t igc_io_slot_reset(struct pci_dev *pdev)
>  {
> @@ -6777,7 +6784,7 @@ static pci_ers_result_t
> igc_io_slot_reset(struct pci_dev *pdev)
>   *
>   *  This callback is called when the error recovery driver tells us
> that
>   *  its OK to resume normal operation. Implementation resembles the
> - *  second-half of the igc_resume routine.
> + *  second-half of the __igc_resume routine.
>   */
>  static void igc_io_resume(struct pci_dev *pdev)
>  {

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
